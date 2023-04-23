import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practica01/navigation-screens/registerNavigationScreen.dart';
import 'package:practica01/register-forms/registerPurchaseScreen.dart';
import 'package:practica01/register-forms/registerSalesScreen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

List<Map<String, dynamic>> cartas = [
  {
    'imagen': 'assets/pen-to-square-solid.svg',
    'titulo': 'Register',
    'texto': 'Register users/products',
    'ruta': RegisterNavigationScreen(),
    'color': Colors.red[200],
  },
  {
    'imagen': 'assets/money-bill-solid.svg',
    'titulo': 'Sales',
    'texto': 'Make a sale',
    'ruta': RegisterSalesScreen(),
    'color': Colors.green[200],
  },
  {
    'imagen': 'assets/cart-shopping-solid.svg',
    'titulo': 'Purchase',
    'texto': 'Make a purchase',
    'ruta': RegisterPurchaseScreen(),
    'color': Colors.blue[200],
  },
];

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Screen'),
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
