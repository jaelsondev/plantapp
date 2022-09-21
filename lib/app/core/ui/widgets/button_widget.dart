import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final BorderSide? borderSide;
  final String title;
  final VoidCallback? onPressed;
  final double radius;
  final double? width;
  final double height;

  const ButtonWidget({
    Key? key,
    required this.backgroundColor,
    required this.color,
    this.borderSide,
    required this.title,
    this.onPressed,
    required this.radius,
    this.width,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(width ?? MediaQuery.of(context).size.width, height),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radius,
            ),
            side: borderSide ?? BorderSide.none,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: color,
        ),
      ),
    );
  }
}
