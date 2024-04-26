import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String customText;
  const CustomTextButton({super.key, required this.customText});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        child: Text(
          widget.customText,
          style: const TextStyle(
            decoration: TextDecoration.underline,
          ),
        )
    );
  }
}
