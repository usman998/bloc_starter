
import 'package:flutter/material.dart';

class DefaultRoundedButton extends StatelessWidget {
  const DefaultRoundedButton({
    Key? key,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.btnColor,
    required this.shadowColor,
    required this.onPress,
    required this.mainWidget,
  }) : super(key: key);

  final double buttonHeight;
  final double buttonWidth;
  final Color btnColor;
  final Color shadowColor;
  final Function()? onPress;
  final Widget mainWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: btnColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: MaterialButton(
          onPressed: onPress,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,child: mainWidget,
          ),
        ),
      ),
    );
  }
}