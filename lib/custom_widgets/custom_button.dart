import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.customColor, required this.customText});

  final Color customColor;
  final String customText;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: customColor,

      onPressed: (){},

      label: Center(
        child: Text(
          customText,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
          ),
        ),
      ),

    );
  }
}
