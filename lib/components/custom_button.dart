import 'package:flutter/material.dart';

import '../theme/app_texts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, required this.color, required this.text,
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
          backgroundColor:
          MaterialStateProperty.all(color),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            text,
            style: AppTexts.buttonText,
          ),
        ),
        onPressed: () {
          print('button click');
        });
  }
}