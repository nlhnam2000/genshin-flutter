import 'package:flutter/material.dart';
import 'package:genshin_app/utils/colors.dart';

class SearchTextField<T> extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;
  final List<T> items;
  // final Function(T) onChanged;
  final String Function(T item) itemAsResult;
  final Function(T value)? onSelected;
  final double? spacing;
  final double? limitHeight;
  final bool isScrollable;
  final Function(String value)? onChanged;

  const SearchTextField({
    Key? key,
    this.hintText,
    required this.controller,
    required this.items,
    // required this.onChanged,
    required this.itemAsResult,
    this.onSelected,
    this.spacing = 0,
    this.limitHeight,
    this.isScrollable = false,
    this.onChanged,
  }) : super(key: key);

  @override
  _SearchTextFieldState<T> createState() => _SearchTextFieldState<T>();
}

class _SearchTextFieldState<T> extends State<SearchTextField<T>> {
  final LayerLink layerLink = LayerLink();
  OverlayEntry? entry;

  void controllerListener() {
    if (widget.controller.text.isEmpty) {
      removeOverlay();
    }
  }

  @override
  void initState() {
    widget.controller.addListener(controllerListener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(controllerListener);
    super.dispose();
  }

  // @override
  // void didUpdateWidget(covariant SearchTextField<T> oldWidget) {
  //   if (widget.items.isNotEmpty) {
  //     showOverlay();
  //   }
  //   super.didUpdateWidget(oldWidget);
  // }

  void showOverlay() {
    // remove previous overlay
    removeOverlay();

    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    entry = OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: layerLink,
          showWhenUnlinked: false,
          offset: Offset(
            0,
            size.height + (widget.spacing ?? 0),
          ),
          child: buildOverlay(),
        ),
      ),
    );

    overlay?.insert(entry!);
  }

  void removeOverlay() {
    entry?.remove();
    entry = null;
  }

  List<T> getSuggestion() {
    return widget.items
        .where((element) => widget
            .itemAsResult(element)
            .toLowerCase()
            .startsWith(widget.controller.text.toLowerCase()))
        .toList();
  }

  Widget buildOverlay() => Material(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Container(
          // height: widget.isScrollable ? widget.limitHeight : null,
          decoration: const BoxDecoration(
            color: CustomColor.secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (T item in getSuggestion())
                  ...[
                    GestureDetector(
                      onTap: () {
                        if (widget.onSelected != null) {
                          widget.onSelected!(item);
                          removeOverlay();
                        }
                      },
                      child: ListTile(
                        title: Text(
                          widget.itemAsResult(item),
                        ),
                      ),
                      // child: ListTile(
                      //   title: RichText(
                      //     text: TextSpan(
                      //       style: DefaultTextStyle.of(context).style,
                      //       children: [
                      //         // for (String char
                      //         //     in widget.itemAsResult(item).split("")) ...[
                      //         //   TextSpan(
                      //         //     text: char,
                      //         //     style: TextStyle(
                      //         //       fontWeight: char.toLowerCase() ==
                      //         //               widget.controller.text.toLowerCase()
                      //         //           ? FontWeight.bold
                      //         //           : null,
                      //         //     ),
                      //         //   ),
                      //         // ]
                      //         for (int i = 0;
                      //             i <
                      //                 widget
                      //                     .itemAsResult(item)
                      //                     .split("")
                      //                     .length;
                      //             i++) ...[
                      //           TextSpan(
                      //             text: widget.itemAsResult(item)[i],
                      //             style: TextStyle(
                      //               fontWeight: widget
                      //                           .controller.text.isNotEmpty &&
                      //                       widget.controller.text.length - 1 <=
                      //                           i
                      //                   ? (widget
                      //                               .itemAsResult(item)[i]
                      //                               .toLowerCase() ==
                      //                           widget.controller.text[i]
                      //                               .toLowerCase()
                      //                       ? FontWeight.bold
                      //                       : null)
                      //                   : null,
                      //             ),
                      //           ),
                      //         ]
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    )
                  ].toList()
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    // debugPrint("rebuild");
    return CompositedTransformTarget(
      link: layerLink,
      child: TextField(
        onChanged: (value) {
          if (value.isEmpty) {
            removeOverlay();
          } else {
            showOverlay();
          }
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        decoration: InputDecoration(
          hintText: widget.hintText ?? "Search ...",
          hintStyle: TextStyle(color: Colors.grey.shade300, fontSize: 14),
          isDense: true,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.secondaryBackground,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.secondaryBackground,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: CustomColor.secondaryBackground,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15)),
        ),
        controller: widget.controller,
      ),
    );
  }
}
