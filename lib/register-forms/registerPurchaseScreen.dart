import 'package:flutter/material.dart';
import 'package:practica01/widgets/customButton.dart';
import 'package:practica01/widgets/customFormField.dart';

class RegisterPurchaseScreen extends StatefulWidget {
  @override
  _RegisterPurchaseScreenState createState() => _RegisterPurchaseScreenState();
}

class _RegisterPurchaseScreenState extends State<RegisterPurchaseScreen> {
  final _formKey = GlobalKey<FormState>();
  int _idProduct = 0;
  String _name = '';
  int _pieces = 0;
  String _ida = '';

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
                  labelText: "Product ID",
                  icon: Icons.vpn_key,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a product ID',
                  changes: (value) {
                    setState(() {
                      _idProduct = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Product Name",
                  icon: Icons.shopping_cart,
                  validationMessage: 'Please enter a product name',
                  changes: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Pieces",
                  icon: Icons.format_list_numbered,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter the number of pieces',
                  changes: (value) {
                    setState(() {
                      _pieces = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "IDA",
                  icon: Icons.person,
                  validationMessage: 'Please enter an IDA',
                  changes: (value) {
                    setState(() {
                      _ida = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomButton(
                  formKey: _formKey,
                  text: 'Submit',
                  title: 'Successful registration',
                  content:
                      'IdProduct: $_idProduct\nName: $_name\nPieces: $_pieces\nIDA: $_ida',
                  onPressedFunc: () {
                    Navigator.of(context).pop();
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
