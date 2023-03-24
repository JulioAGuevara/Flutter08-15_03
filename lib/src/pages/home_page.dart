import 'package:flutter/material.dart';
import 'package:marz08/src/models/mi_data.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                // DrawerHeader(
                //   padding: EdgeInsets.zero,
                //   child: Container(
                //     color: Colors.green,
                //     height: 150,
                //   ),
                // ),
          
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Inicio'),
                    trailing: const Icon(Icons.arrow_forward),
          
                    onTap: (){
                      Navigator.of(context).pushNamed('/list');
                    },
                  ),
                  const ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Configuracion'),
                    trailing: Icon(Icons.arrow_forward),
                  )
              ],
            ),
          ),
        ),
        body: ListView(
        
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

          ElevatedButton(
            onPressed: (){
              //Navegacion a la pagina de listas
              Navigator.of(context).pushNamed('/argumentos', arguments: MiData(name: 'Nombre', email: 'Correo'));
            }, 
            child: const Text(
              'Argumentos',
               style: TextStyle(fontSize: 30),
            ),
          ),
      ]),
    );
  }
}