import 'package:flutter/material.dart';
import 'package:marz08/src/models/mi_data.dart';

class Argumentos extends StatefulWidget {
  const Argumentos({super.key});

  @override
  State<Argumentos> createState() => _ArgumentosState();
}

class _ArgumentosState extends State<Argumentos> {
  bool passView = false;
  TextEditingController _controller = TextEditingController(
    text: 'Valor Inicial'
  );

  @override
  Widget build(BuildContext context) {
    final MiData data = ModalRoute.of(context)!.settings.arguments as MiData;

    print(data.name+'  '+data.email);

    

    return Scaffold(
      appBar: AppBar(
        title: Text('Argumentos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              passView = !passView;
              setState(() {});
            }, child: Text('O')),
            Center(
              child: TextField(
                controller: _controller,
                obscureText: !passView, //Para contraseñas
                onChanged: (valor){
                  print(valor);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

