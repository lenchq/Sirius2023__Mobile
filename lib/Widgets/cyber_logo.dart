import 'package:flutter/material.dart';

class CyberLogo extends StatelessWidget {
  const CyberLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
          height: 30,
          width: 60,
          image: AssetImage("assets/cyber_red.png")
      ),
    );
  }
}