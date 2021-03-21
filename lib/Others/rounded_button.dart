import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    this.title,
    @required this.onPressed,
    @required this.height,
    @required this.width,
    this.style,
  });

  final String title;
  final Function onPressed;
  final double height;
  final double width;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        color: Color(0xFFff4d4d),
        borderRadius: BorderRadius.circular(12.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: height,
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}
