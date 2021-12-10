import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            //leading coloca un widget al inicio
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy un título'),
            subtitle: Text(
                'Estes es un parrafo para mostrar como funcionan el contendido de esta tarjeta voy a agregar una lina mas.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(child: const Text('Ok'), onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: const <Widget>[
          //FadeInImage(placeholder: placeholder, image: image)
          Image(
            image: NetworkImage(
                'https://scontent.fpei3-1.fna.fbcdn.net/v/t31.18172-8/17218710_1253231141424786_5871703485702604821_o.jpg?_nc_cat=106&ccb=1-5&_nc_sid=973b4a&_nc_ohc=3zzut7qcvuwAX_vyXec&_nc_ht=scontent.fpei3-1.fna&oh=8fe5f746d16600e47070a271f838e8a4&oe=61D7A6E5'),
          ),
          // const Container(
          //   child: Text('Imagen'),
          // ),
        ],
      ),
    );
  }
}
