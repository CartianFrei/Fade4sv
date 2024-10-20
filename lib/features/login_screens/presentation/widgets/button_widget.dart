import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.function, required this.text});

  final Function function;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Material(
          elevation: 16,
          shadowColor: Colors.black45,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          child: Container(
            height: 58.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20.0, color: Color(0xFF205692)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
