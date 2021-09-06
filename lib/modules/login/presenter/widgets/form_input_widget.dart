import 'package:flutter/material.dart';

class FormInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String labelText;
  String? Function(String?)? validator;

  FormInputWidget(
      {Key? key,
      required this.controller,
      required this.obscureText,
      required this.validator,
      required this.labelText,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: labelText
        ),
        controller: controller,
        obscureText: obscureText,
      ),
    );
  }
}
