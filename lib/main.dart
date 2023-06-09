import 'package:flutter/material.dart';
import 'package:marz08/src/pages/botones_page.dart';
import 'package:marz08/src/pages/imagenes_page.dart';
import 'package:marz08/src/pages/lista2_page.dart';
import 'package:marz08/src/pages/page_argumentos.dart';
import './src/pages/home_page.dart';
import './src/pages/listas_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
      
      onGenerateRoute: ( RouteSettings settings) {
        switch(settings.name){
          case '/home':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/list':
            return MaterialPageRoute(builder: (context) => const ListasPage());
          case '/list2':
            return MaterialPageRoute(builder: (context) => const Lista2Page());
          case '/buttons':
            return MaterialPageRoute(builder: (context) => const BotonesPage());
          case '/images':
            return MaterialPageRoute(builder: (context) => const ImagesPage());
          case '/argumentos':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) =>  Argumentos()
              );
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}