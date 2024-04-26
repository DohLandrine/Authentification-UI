import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String customText;
  final TextInputType customTextInputType;

  const CustomTextFormField({super.key, required this.customText, required this.customTextInputType});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showIcon = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(

          obscureText: showIcon,

          keyboardType: widget.customTextInputType,

          decoration: widget.customTextInputType == TextInputType.visiblePassword ? InputDecoration(

              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    showIcon = !showIcon;
                  });
                },
                icon: showIcon ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
              ),
              labelText: widget.customText,
              border: const OutlineInputBorder()
          ) :InputDecoration(
              labelText: widget.customText,
              border: const OutlineInputBorder()
          )
      ),
    );
  }
}
