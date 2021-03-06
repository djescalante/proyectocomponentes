import 'package:flutter/material.dart';
import 'package:proyectocomponentes/src/pages/alert_page.dart';
import 'package:proyectocomponentes/src/providers/menu_providers.dart';
import 'package:proyectocomponentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: const Text('Componentes')),
      ),
      //creamos el metodolista
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);    //menuProvider.cargarData()
    //FutureBuilder es un widget que permite dibujarse a si mismo basado en la ultima carga del Future
    //estados de un Future - cuando se pide informacion- cuando se resuelve y cuando da error
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          //el metodo _listaItems se encargará de mostrar los elementos
          children: _listaItems(snapshot.data, context),
        );
      }, //devuelve algo que se va dibujar en pantalla
    );
  }

  //listaItems que va a regresar? una lista de widgets
  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    //data!.forEach((opt) {
    for (var opt in data!) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        //leading: const Icon(Icons.account_circle,color: Colors.amber,),

        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context,
              opt['ruta']); //estamos llamando a un pushnamed que el name de mi
          //ruta tiene que estar definido en la rutas del main.dart(material APP)

          //esto es valido cuando tenemos una sola pagina a la cuar ir y volver
          /* final route =
              MaterialPageRoute(builder: (context) => const AlertPage());
          Navigator.push(context, route); */
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    }
    return opciones;
  }
}
