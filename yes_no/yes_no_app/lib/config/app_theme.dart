import 'package:flutter/material.dart';

/*
En este archivo configuramos el thema de la app
*/
///Este es el color principal lo hacemos privado para que 
///no sea modificado en otro lugar
const Color _color = Color(0xFF5C11D4);

///Lista de colores a alternar.
///Usamos la clase Color
const List<Color> _colorThemes = [
  _color,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

///Es el tipo que vamos a instanciar en el theme de MaterialAPP
class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Colores deben estar entre 0 y ${_colorThemes.length}',
      );

/// Creamos el metodo theme
/// que retorna un tipo ThemeData, es lo que espera materialApp
  ThemeData theme() { 
    return ThemeData(
      useMaterial3: true, //Cambia el aspecto de nuestra aplicación a la mas actual
      colorSchemeSeed:
          _colorThemes[selectedColor], //colorSchemeSeed genera una paleta de  colorores  consistente con mi app
      // brightness: Brightness.dark //hace que la app sea de thema oscuro.
    );
  }
}
