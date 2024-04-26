import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_screen/custom_widgets/custom_icon_button.dart';
import 'package:sample_screen/custom_widgets/custom_button.dart';
import 'package:sample_screen/custom_widgets/custom_text.dart';
import 'package:sample_screen/custom_widgets/custom_text_button.dart';
import 'package:sample_screen/custom_widgets/custom_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInState();
}

class _SignInState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children:const [
          CustomLargeText(customText: 'Sign In'),
          CustomSmallText(customText: "Sign in to this cool app, which i know absolutely nothing about", customOpacity: 0.4),
          CustomTextFormField(customText: 'Email Address', customTextInputType: TextInputType.emailAddress),
          CustomTextFormField(customText: "Password", customTextInputType: TextInputType.visiblePassword),
          CustomTextButton(customText: 'Forgot Password'),
          CustomButton(customColor: Colors.blue, customText: 'Sign In'),
          Center(child: CustomSmallText(customText: "or", customOpacity: 0.5,)),
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
              Text("Don't have an account?"),
              CustomTextButton(customText: "Sign up")
            ],
          )
        ],
      ),
    );
  }
}
