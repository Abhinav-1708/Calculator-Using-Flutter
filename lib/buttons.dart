import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final Color? textcolor;
  final String buttonText;
  final buttonTapped;

  MyButton({
    this.color,
    this.textcolor,
    required this.buttonText,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textcolor, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static const Color clearButtonColor = Color.fromARGB(255, 13, 248, 174);
  static const Color deleteButtonColor = Color.fromARGB(255, 245, 94, 84);
  static const Color operatorButtonColor = Color.fromARGB(255, 130, 71, 240);
  static const Color digitButtonColor = Color.fromARGB(255, 250, 239, 255);
}
