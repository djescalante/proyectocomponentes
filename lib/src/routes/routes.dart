import 'package:flutter/material.dart';
import 'package:proyectocomponentes/src/pages/alert_page.dart';
import 'package:proyectocomponentes/src/pages/avatar_page.dart';
import 'package:proyectocomponentes/src/pages/cards_page.dart';
import 'package:proyectocomponentes/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicacionRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
  };
}
