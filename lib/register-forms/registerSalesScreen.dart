import 'package:flutter/material.dart';
import 'package:practica01/widgets/customButton.dart';
import 'package:practica01/widgets/customFormField.dart';

class RegisterSalesScreen extends StatefulWidget {
  @override
  _RegisterSalesScreenState createState() => _RegisterSalesScreenState();
}

class _RegisterSalesScreenState extends State<RegisterSalesScreen> {
  final _formKey = GlobalKey<FormState>();
  int _idProduct = 0;
  String _name = '';
  int _amount = 0;
  int _idv = 0;
  int _idc = 0;
  int _pieces = 0;
  double _subtotal = 0.0;
  double _total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales'),
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
                  labelText: "Amount",
                  icon: Icons.monetization_on_outlined,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter an amount',
                  changes: (value) {
                    setState(() {
                      _amount = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Vendor ID",
                  icon: Icons.person,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a vendor ID',
                  changes: (value) {
                    setState(() {
                      _idv = int.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Customer ID",
                  icon: Icons.person_outline,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a customer ID',
                  changes: (value) {
                    setState(() {
                      _idc = int.parse(value);
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
                  labelText: "Subtotal",
                  icon: Icons.attach_money_outlined,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a subtotal',
                  changes: (value) {
                    setState(() {
                      _subtotal = double.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Total",
                  icon: Icons.money_outlined,
                  keyboardType: TextInputType.number,
                  validationMessage: 'Please enter a total',
                  changes: (value) {
                    setState(() {
                      _total = double.parse(value);
                    });
                  },
                ),
                SizedBox(height: 16),
                CustomButton(
                  formKey: _formKey,
                  text: 'Submit',
                  title: 'Successful registration',
                  content:
                      'IdProduct: $_idProduct\nName: $_name\nAmount: $_amount\nIdv: $_idv\nIdc: $_idc\nPieces: $_pieces\nSubtotal: $_subtotal\nTotal: $_total',
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
