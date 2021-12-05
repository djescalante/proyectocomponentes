import 'package:flutter/material.dart';

class HomePageTem extends StatelessWidget {
  const HomePageTem({Key? key}) : super(key: key);
  static const opciones = ['UNO', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes TEMP'),
      ),
      //body: ListView(children: _crearItems(),
      body: ListView(children: _crearListaCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    for (String opt in opciones) {
      var tempWidget = ListTile(
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

  List<Widget> _crearListaCorta() {
    //voy a retornar una nueva lista con los items tranformados pasandolos por el metodo
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text(item + 'por aqui ira un posto completo'),
            leading: const Icon(Icons.account_balance_rounded),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          const Divider(),
        ],
      );
    }).toList();
  } /*  List<Widget> _crearListaCorta() {
    //voy a retornar una nueva lista con los items tranformados pasandolos por el metodo
    var widgets = opciones.map((item) {
      return ListTile(
        title: Text(item + '!'),
      );
    }).toList();
    return widgets;
  }*/
}
