import 'package:flutter/material.dart';
import 'package:proyectocomponentes/src/pages/alert_page.dart';
import 'package:proyectocomponentes/src/routes/routes.dart';
//import 'package:proyectocomponentes/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COMPONENTES', debugShowCheckedModeBanner: false,
      //home: HomePage()); //home: HomePageTem());
      initialRoute: '/',
      routes: getApplicacionRoutes(),

      onGenerateRoute: (RouteSettings settings) {
        print('Ruta Llamaada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => const AlertPage());
      },
    );
  }
}
