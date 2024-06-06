import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final Color iconColor;
  final String hintText;
  final TextInputType? keyboardType;

  final String obscuringText;
  final String? Function(String?)? validator;

  const PasswordField(
      {super.key,
      required this.iconColor,
      required this.controller,
      required this.icon,
      required this.hintText,
      this.validator,
      this.keyboardType,
      this.obscuringText = '*',
      });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {

  bool isobscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      style: const TextStyle(fontSize: 14, color: Colors.black),
      obscureText: isobscure,
      obscuringCharacter: widget.obscuringText,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: Colors.white,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        errorMaxLines: 3,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey)),
         focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey)),

        suffixIcon:
            IconButton(onPressed: () {
              setState(() {
                isobscure = !isobscure;
              });

            }, icon: Icon(isobscure
                ? CupertinoIcons.eye
                : CupertinoIcons.eye_slash),
            ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.iconColor,
              ),
              child: Icon(widget.icon)),
        ),
      ),
    );
  }
}
