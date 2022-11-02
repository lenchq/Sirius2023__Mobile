import 'package:flutter/material.dart';

class StatusText extends StatelessWidget {
  final String headerText;
  final String valueText;

  const StatusText(
      this.headerText,
      this.valueText,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerText,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            fontFamily: "Aeroport",
            color: Colors.red,
          ),
        ),
        Text(
          valueText,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
            fontFamily: "Aeroport",
          ),
        ),
      ],
    );
  }
}