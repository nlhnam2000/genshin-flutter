import 'package:flutter/material.dart';

class ChangeQuantity extends StatefulWidget {
  final int initalData;
  final Function(int newQuantity) onChangeQuantity;
  final int? minData;
  final int? maxData;
  const ChangeQuantity({
    Key? key,
    required this.onChangeQuantity,
    this.initalData = 0,
    this.minData,
    this.maxData,
  }) : super(key: key);

  @override
  _ChangeQuantityState createState() => _ChangeQuantityState();
}

class _ChangeQuantityState extends State<ChangeQuantity> {
  late int currentQuantity;

  @override
  void initState() {
    currentQuantity = widget.initalData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            if (widget.minData != null) {
              if (currentQuantity > widget.minData!) {
                setState(() {
                  currentQuantity -= 1;
                });
                widget.onChangeQuantity(currentQuantity);
              }
            } else {
              setState(() {
                currentQuantity -= 1;
              });
              widget.onChangeQuantity(currentQuantity);
            }
          },
          icon: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(currentQuantity.toString()),
        const SizedBox(
          width: 7,
        ),
        IconButton(
          onPressed: () {
            if (widget.maxData != null) {
              if (currentQuantity < widget.maxData!) {
                setState(() {
                  currentQuantity += 1;
                });
                widget.onChangeQuantity(currentQuantity);
              }
            } else {
              setState(() {
                currentQuantity += 1;
              });
              widget.onChangeQuantity(currentQuantity);
            }
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
