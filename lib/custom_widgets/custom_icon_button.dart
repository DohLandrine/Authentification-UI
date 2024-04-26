import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Icon customIcon;
  const CustomIcon({super.key, required this.customIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black26
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: IconButton(
          onPressed: (){},
          icon: customIcon,
          iconSize: 35,
        ),
      ),
    );
  }
}

class CustomCheckButton extends StatefulWidget {
  const CustomCheckButton({super.key});

  @override
  State<CustomCheckButton> createState() => _CustomCheckButtonState();
}

class _CustomCheckButtonState extends State<CustomCheckButton> {

  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          setState(() {
            agreed = !agreed;
          });
        },
        icon: agreed ?
        const Icon(
            Icons.check_box_rounded,
            color: Colors.blue,
        ) :
        const Icon(Icons.check_box_outline_blank_rounded),
    );
  }
}
