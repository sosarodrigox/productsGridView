import 'package:flutter/material.dart';
import '../../grillaprod.dart' as grilla;
import 'producto.dart';
import 'themegrandi.dart' as themegrandi;

List<Producto> listaProductos = <Producto>[
  Producto('BRAHMA', 'Lata 750cc', 25955885.46555,'beerIco.png'),
  Producto('SCHNEIDER', 'Rubia 970cc', 385.26,'beerIco.png'),
  Producto('QUILMES', 'Cristall 970cc', 55.06, 'beerIco.png'),
  Producto('IMPERIAL', 'Lata Neg 450cc', 225.35, 'beerIco.png'),
  Producto('STELLA ARTOIS marca', 'Rubia 970cc', 115.00, 'beerIco.png'),
  Producto('DIOSA', 'Lata Roja 450cc', 56785.99, 'beerIco.png'),
  Producto('BRAHMA', 'Lata 750cc', 985.46, 'beerIco.png'),
  Producto('SCHNEIDER', 'Rubia 970cc', 385.26, 'beerIco.png'),
  Producto('QUILMES', 'Cristall 970cc', 55.03, 'beerIco.png'),
  Producto('IMPERIAL', 'Lata Neg 450cc', 225.35, 'beerIco.png'),
  Producto('STELLA ARTOIS', 'Rubia 970cc', 115.00, 'beerIco.png'),
  Producto('DIOSA', 'Lata Roja 450cc', 56785.99, 'beerIco.png'),
  Producto('QUILMES', 'Cristall 970cc', 55.00, 'beerIco.png'),
  Producto('IMPERIAL', 'Lata Neg 450cc cajon de 20', 225.35, 'beerIco.png'),
  Producto('IMPERIAL', 'Lata Neg 450cc cajon de 20', 225.35, 'beerIco.png'),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grilla de productos',
      
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: themegrandi.Colors.colorAccion,
        ),
      ),

      home: Scaffold(
        backgroundColor: themegrandi.Colors.colorFondo,
        appBar: AppBar(
          title: const Text('Grilla Prueba'),
        ),
        body: Center(
          
          child: grilla.GrillaProductos().build(context,
                                                listaProductos,
                                                2,
                                                Axis.horizontal,
                                                themegrandi.Colors.colorAccion,
                                                themegrandi.Colors.colorPrincipal
                                                ),
                                                
        ),
      ),
    );
  }
}

//Para resolver:
//onTap: Navigator,
//Ver navigator, lambda, setState (Controlar ID Prod)
//Textos que varien con los tamaños de pantalla