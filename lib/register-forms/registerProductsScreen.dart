import 'package:flutter/material.dart';
import 'package:practica01/widgets/customButton.dart';
import 'package:practica01/widgets/customFormField.dart';

class RegisterProductsScreen extends StatefulWidget {
  @override
  _RegisterProductsScreenState createState() => _RegisterProductsScreenState();
}

class _RegisterProductsScreenState extends State<RegisterProductsScreen> {
  final _formKey = GlobalKey<FormState>();
  int _id = 0;
  String _name = '';
  String _description = '';
  int _units = 0;
  double _cost = 0.0;
  double _price = 0.0;
  double _utility = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
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
                  labelText: "Description",
                  icon: Icons.description,
                  validationMessage: 'Please enter a description',
                  changes: (value) {
                    setState(() {
                      _description = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Units",
                  icon: Icons.add_shopping_cart,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter the number of units',
                  changes: (value) {
                    setState(() {
                      _units = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Cost",
                  icon: Icons.monetization_on,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a cost',
                  changes: (value) {
                    setState(() {
                      _cost = double.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Price",
                  icon: Icons.attach_money,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a price',
                  changes: (value) {
                    setState(() {
                      _price = double.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Utility",
                  icon: Icons.poll,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a utility',
                  changes: (value) {
                    setState(() {
                      _utility = double.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomButton(
                  formKey: _formKey,
                  text: 'Submit',
                  title: 'Successful registration',
                  content:
                      'ID: $_id\nName: $_name\nDescription: $_description\nCost: $_cost\nPrice: $_price\nUtility: $_utility',
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
