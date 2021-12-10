import 'package:flutter/material.dart';

class HomePageTem extends StatelessWidget {
  //las propiedades dentro de un statelesswirdget deben ser fina
  static const opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  const HomePageTem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[]; // ya no se susa = List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
      //lista.add(tempWidget);
      //lista.add(const Divider());
    }

    return lista;
  }
}
