import 'package:flutter/material.dart';
import 'package:practica01/widgets/customButton.dart';
import 'package:practica01/widgets/customFormField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  int _id = 0;
  String _name = '';
  String _lastName = '';
  int _age = 0;
  String _gender = 'Male';
  String _email = '';
  String _password = '';
  String _role = 'yes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  labelText: "ID",
                  icon: Icons.vpn_key,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter an ID',
                  changes: (value) {
                    setState(() {
                      _id = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Name",
                  icon: Icons.person,
                  validationMessage: 'Please enter a name',
                  changes: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Last Name",
                  icon: Icons.person_outline,
                  validationMessage: 'Please enter a last name',
                  changes: (value) {
                    setState(() {
                      _lastName = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Age",
                  icon: Icons.cake,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter your age',
                  changes: (value) {
                    setState(() {
                      _age = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Gender",
                  icon: Icons.person_outline_rounded,
                  validationMessage: 'Please enter your gender',
                  changes: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Email",
                  icon: Icons.email,
                  validationMessage: 'Please enter a valid email',
                  changes: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Password",
                  icon: Icons.lock,
                  validationMessage: 'Please enter a password',
                  changes: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Role",
                  icon: Icons.admin_panel_settings_rounded,
                  validationMessage: 'Please enter your role',
                  changes: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomButton(
                  formKey: _formKey,
                  text: 'Submit',
                  title: 'Successful registration',
                  content:
                      'ID: $_id\nName: $_name\nLast Name: $_lastName\nAge: $_age\nGender: $_gender\nEmail: $_email\nPassword: $_password\nRole: $_role',
                  onPressedFunc: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/loginScreen',
                      (route) => false,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
