import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.focusNode,
      this.inputFormatter,
      required this.hintText,
      required this.keyboardType,
      required this.controller,
      required this.maxInputCount});

  final List<TextInputFormatter>? inputFormatter;
  final FocusNode focusNode;
  final int maxInputCount;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Material(
        elevation: 16,
        shadowColor: Colors.black45,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        child: Container(
          height: 58.0,
          padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24.0),
              border: focusNode.hasFocus
                  ? Border.all(color: const Color(0xFF205692), width: 2.0)
                  : null),
          child: TextField(
            maxLength: maxInputCount,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            inputFormatters: inputFormatter,
            controller: controller,
            focusNode: focusNode,
            cursorColor: const Color(0xFF2C2929),
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              counterText: "",
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle:
                  TextStyle(color: const Color(0xFF2C2929).withOpacity(0.40)),
            ),
            style: const TextStyle(fontSize: 20.0, color: Color(0xFF2C2929)),
          ),
        ),
      ),
    );
  }
}
