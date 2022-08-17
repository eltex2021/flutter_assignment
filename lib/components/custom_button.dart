import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_texts.dart';

class CustomButton extends StatefulWidget {
  CustomButton({
    Key? key,
    //required this.color,
    required this.text,
  }) : super(key: key);

  //final Color color;
  final String text;
  bool isSelected = false;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
          backgroundColor: MaterialStateProperty.all(
              widget.isSelected ? AppColors.mainBlue : AppColors.pureBlue),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            widget.text,
            style: AppTexts.buttonText,
          ),
        ),
        onPressed: () {
          print('button click');
          print(widget.isSelected);
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        });
  }
}
