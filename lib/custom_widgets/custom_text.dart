import 'package:flutter/material.dart';

class CustomLargeText extends StatelessWidget {

  final String customText;
  const CustomLargeText({super.key, required this.customText});

  @override
  Widget build(BuildContext context) {
    return Text(
      customText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class CustomSmallText extends StatelessWidget {

  final String customText;
  final double customOpacity;

  const CustomSmallText({super.key, required this.customText, required this.customOpacity});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: customOpacity,
      child: Text(
        customText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

