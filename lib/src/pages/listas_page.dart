import 'package:flutter/material.dart';

void main() => runApp(const ListasPage());

class ListasPage extends StatelessWidget {
  const ListasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final numeros = ['a','b','c','sd'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: ListView.builder(
        itemCount: numeros.length,
        itemBuilder: (context, index){
          if(index % 2 == 0){
            return ItemTexto(valor: numeros[index],);
          }
          return ItemTexto();
          
        },
      )
    );
  }
}

class ItemTexto extends StatelessWidget {
  const ItemTexto({super.key, this.valor = ''});

  final String valor;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      color: Colors.teal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Item: $valor',
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,),
        ), 
      )
      
      
    );
  }
}