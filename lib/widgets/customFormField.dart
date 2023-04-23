import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final IconData icon;
  final TextInputType keyboardType;
  final String validationMessage;
  final void Function(String)? changes;

  CustomTextFormField({
    required this.labelText,
    required this.icon,
    this.keyboardType = TextInputType.text,
    required this.validationMessage,
    required this.changes,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(
          widget.icon,
          color: Colors.black,
        ),
      ),
      keyboardType: widget.keyboardType,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.validationMessage;
        }
        return null;
      },
      onChanged: widget.changes,
    );
  }
}
