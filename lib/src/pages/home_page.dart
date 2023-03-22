import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        
        children: [
          ElevatedButton(
            onPressed: (){
              //Navegacion a la pagina de listas
              Navigator.of(context).pushNamed('/list');
            }, 
            child: const Text(
              'Listas',
               style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              //Navegacion a la pagina de listas
              Navigator.of(context).pushNamed('/list2');
            }, 
            child: const Text(
              'Lista 2',
               style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              //Navegacion a la pagina de listas
              Navigator.of(context).pushNamed('/buttons');
            }, 
            child: const Text(
              'Botones',
               style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              //Navegacion a la pagina de listas
              Navigator.of(context).pushNamed('/images');
            }, 
            child: const Text(
              'Imagenes',
               style: TextStyle(fontSize: 30),
            ),
          ),
      ]),
    );
  }
}