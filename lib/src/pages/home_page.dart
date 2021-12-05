import 'package:flutter/material.dart';

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
    return ListView(
      //el metodo _listaItems se encargará de mostrar los elementos
      children: _listaItems(),
    );
  }

  //listaItems que va a regresar? una lista de widgets
  List<Widget> _listaItems() {
    return [
      const ListTile(
        title: Text('Hola Mundo '),
      ),
      const Divider(),
      const ListTile(
        title: Text('Hola Mundo '),
      ),
      const Divider(),
      const ListTile(
        title: Text('Hola Mundo '),
      ),
      const Divider(),
    ];
  }
}
