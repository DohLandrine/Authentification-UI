import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_screen/custom_widgets/custom_button.dart';

import '../custom_widgets/custom_text.dart';
import '../custom_widgets/custom_text_form_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          CustomLargeText(customText: 'Enter your OTP'),
          CustomSmallText(customText: "another part of the story where i know nothing about the ap", customOpacity: 0.4),
          CustomTextFormField(customText: 'OTP', customTextInputType: TextInputType.number),
          CustomButton(customColor: Colors.blue, customText: 'Verify')
        ],
      ),
    );
  }
}
