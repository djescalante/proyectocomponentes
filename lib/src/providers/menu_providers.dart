//para el manejo del archivo con el menu json
import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    //cargarData();
  }
  //una funcion async retorna un Future
  // este future va a retorar unos momentos despues el contenido de la lista
  Future<List<dynamic>> cargarData() async {
    //le decimosa cargar data
    //data es un tring normal  solo trae el json, debemos cambiarlo por ejemplo en un mapa
    final resp = await rootBundle.loadString('data/menu_opts.json');
    //esto convierte el json en mapa
    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}
// un future devuelve una tarea que se va a ejecutar en un futuro
// aqui usaremos un

// menu provider solo expone la instancia priva da de menuProviders
final menuProvider = _MenuProvider();
