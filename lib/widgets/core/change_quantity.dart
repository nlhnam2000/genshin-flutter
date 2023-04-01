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
        InkWell(
          onTap: () {
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
          child: const Icon(
            Icons.remove_circle_outline_outlined,
            size: 28,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          currentQuantity.toString(),
          style: const TextStyle(fontSize: 19),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {
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
          child: const Icon(Icons.add_circle_outline_sharp, size: 28),
        ),
      ],
    );
  }
}
