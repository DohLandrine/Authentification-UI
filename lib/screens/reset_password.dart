import 'package:flutter/material.dart';
import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_text.dart';
import '../custom_widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  dynamic customDialog(){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return const Dialog(
            insetPadding: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    size: 150,
                    color: Colors.blue,
                  ),
                  CustomLargeText(customText: "New Password set successfully!"),
                  CustomSmallText(customText: "Another lorem text again", customOpacity: 0.5),
                  CustomButton(customColor: Colors.blue, customText: 'Go To Home')
                ],
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          CustomLargeText(customText: 'Reset Password'),
          CustomSmallText(customText: "Reset your password, trying to make a long dummy text", customOpacity: 0.4),
          CustomTextFormField(customText: 'New Password', customTextInputType: TextInputType.visiblePassword),
          CustomTextFormField(customText: "Confirm Password", customTextInputType: TextInputType.visiblePassword),
          CustomButton(customColor: Colors.blue, customText: 'Reset Password'),
          FilledButton(onPressed: (){setState(() {customDialog();});}, child: Text('Hey there'))
        ],
      ),
    );
  }
}
