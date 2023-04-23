import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String text;
  final String title;
  final String content;
  final void Function()? onPressedFunc;

  const CustomButton({
    Key? key,
    required this.text,
    required this.formKey,
    required this.title,
    required this.content,
    required this.onPressedFunc,
  }) : super(key: key);

  void _onPressed(BuildContext context) {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: onPressedFunc,
                child: Text("Close"),
              ),
            ],
          );
        },
      ).then((value) => Navigator.of(context).pop());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onPressed(context),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.black),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0.0),
        minimumSize: MaterialStateProperty.all<Size>(Size(150, 40)),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
