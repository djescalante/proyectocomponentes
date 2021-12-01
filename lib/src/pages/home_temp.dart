import 'package:flutter/material.dart';

class HomePageTem extends StatelessWidget {
  const HomePageTem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes+'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return ListView();
  }
}
