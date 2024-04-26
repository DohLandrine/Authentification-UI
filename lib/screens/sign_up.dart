import 'package:flutter/material.dart';
import 'package:sample_screen/custom_widgets/custom_button.dart';
import 'package:sample_screen/custom_widgets/custom_icon_button.dart';
import 'package:sample_screen/custom_widgets/custom_text.dart';
import 'package:sample_screen/custom_widgets/custom_text_form_field.dart';

import '../custom_widgets/custom_text_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          CustomLargeText(customText: 'Sign Up'),
          CustomSmallText(customText: "Sign up to the coolest app ever, that i don't even yet know the use", customOpacity: 0.5),
          CustomTextFormField(customText: 'Full name', customTextInputType: TextInputType.text),
          CustomTextFormField(customText: 'Email Address', customTextInputType: TextInputType.emailAddress),
          CustomTextFormField(customText: 'Password', customTextInputType: TextInputType.visiblePassword),
          Row(
            children: [
              CustomCheckButton(),
              Text('I Agree to the terms and condition')
            ],
          ),

          Center(child: CustomSmallText(customText: "or", customOpacity: 0.5,)),

          CustomButton(customColor: Colors.blue, customText: 'Sign Up'),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(customIcon: Icon(Icons.facebook)),
              SizedBox(width:15),
              CustomIcon(customIcon: Icon(Icons.tiktok))
            ],
          ),
          Row(
            children: [
              Text("Already have an account?"),
              CustomTextButton(customText: "Sign In")
            ],
          )
        ],
      ),
    );
  }
}
