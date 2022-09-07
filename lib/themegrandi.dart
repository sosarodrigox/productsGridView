import 'dart:ui';

import 'package:flutter/material.dart';

class Colors {
  static Color? color;

  const Colors();
  static const Color colorFondo = Color(0xFFD9D9D9);

  static const Color colorPrincipal = Color(0xFFFFFFFF);

  //Azul Grandi
  static const Color colorAccion = Color(0xFF357ebd);
}

class TextSizes {
  static letraGrande(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.02;
  }

  static letraChica(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.01;
  }

  static letraTablas(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.032;
  }

  static letraTitulos(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.03;
  }
}

class BackDrop {
  static blur() {
    return ImageFilter.blur(
      sigmaX: 2,
      sigmaY: 2,
    );
  }
}