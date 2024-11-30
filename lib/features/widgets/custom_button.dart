import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.fillColor,
    required this.borderColor,
    required this.borderRadius,
    required this.title,
    required this.textStyle,
    super.key,
  });

  final double buttonWidth;
  final double buttonHeight;
  final Color fillColor;
  final Color borderColor;
  final double borderRadius;
  final String title;
  final TextStyle textStyle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: fillColor,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
