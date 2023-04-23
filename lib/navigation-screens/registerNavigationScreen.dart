import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practica01/loginScreen.dart';
import 'package:practica01/register-forms/registerProductsScreen.dart';
import 'package:practica01/register-forms/registerScreen.dart';

class RegisterNavigationScreen extends StatefulWidget {
  @override
  _RegisterNavigationScreenState createState() =>
      _RegisterNavigationScreenState();
}

List<Map<String, dynamic>> cartas = [
  {
    'imagen': 'assets/user-solid.svg',
    'titulo': 'User',
    'texto': 'Register users',
    'ruta': RegisterScreen(),
    'color': Colors.grey[400],
  },
  {
    'imagen': 'assets/bottle-water-solid.svg',
    'titulo': 'Products',
    'texto': 'Register products',
    'ruta': RegisterProductsScreen(),
    'color': Color.fromARGB(255, 246, 235, 141),
  },
];

class _RegisterNavigationScreenState extends State<RegisterNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register navigation Screen'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0),
        child: GridView.count(
          mainAxisSpacing: 16.0, // Espacio entre las cartas
          crossAxisSpacing: 16,
          crossAxisCount: 2,
          children: List.generate(cartas.length, (index) {
            return InkWell(
              onTap: () {
                // código para cambiar de pantalla
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => cartas[index]['ruta']),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 10.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: cartas[index]['color'],
                        child: SvgPicture.asset(
                          cartas[index]['imagen'],
                          height: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        cartas[index]['titulo'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(
                        cartas[index]['texto'],
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
