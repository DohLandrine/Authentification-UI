import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_screen/custom_widgets/custom_button.dart';
import 'package:sample_screen/custom_widgets/custom_text.dart';
import 'package:sample_screen/custom_widgets/custom_text_form_field.dart';

import '../custom_widgets/custom_text_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          CustomLargeText(customText: "Forgot Password"),
          CustomSmallText(customText: 'Lorem is simply a dummy text, produced by typescript bla bla bla', customOpacity: 0.5),
          CustomTextFormField(customText: 'Email Address', customTextInputType: TextInputType.emailAddress,),
          CustomButton(customColor: Colors.blue, customText: 'Send code'),
          Row(
            children: [
              Text("Go back to"),
              CustomTextButton(customText: "Sign In")
            ],
          )
        ],
      ),
    );
  }
}
