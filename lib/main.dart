import 'package:flutter/material.dart';
import 'package:proyectocomponentes/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COMPONENTES',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Componentes APP'),
          ),
          body: const HomePageTem()),
    );
  }
}
