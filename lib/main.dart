import 'package:flutter/material.dart';
import '../../grillaprod.dart' as grilla;
import 'customScrollBehavior.dart';
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
      //https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag
      scrollBehavior: CustomScrollBehavior(), //Clase creada para que que funcione el scroll horizontal en web y windowsapps
      debugShowCheckedModeBanner: false,
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
                                                1,
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
//onTap: Navigator, (Ver con Mateo)
//Ver navigator, lambda, setState (Controlar ID Prod) (Ver con Mateo)
//Scroll horizontal en web-appwindows (Listo) - Debe detectar rueda del mouse (Viendo)
//Textos que varien con los tama??os de pantalla (Listo)