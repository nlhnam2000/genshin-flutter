import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final Widget content;
  final double space;
  const InfoSection({
    Key? key,
    required this.title,
    required this.content,
    this.space = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: space,
        ),
        content,
      ],
    );
  }
}
