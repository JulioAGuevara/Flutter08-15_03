
import 'package:flutter/material.dart';

void main() => runApp(const BotonesPage());

class BotonesPage extends StatelessWidget {
  const BotonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              color: Colors.lightBlue,
              iconSize: 32,
              onPressed: (){}, 
              icon: Icon(Icons.send_and_archive)
              ),
              const SizedBox(height: 20),
              TextButton(
                onLongPress: (){
                  print('Long press');
                },
                onPressed: null, 
                child: Text('Text Button', style: TextStyle(fontSize: 30),)
                ),
                const SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.person_off),
                  ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: (){}, 
                  child: Text('OutlinedButton')
                  ),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    print('onTap');
                  },
                  onDoubleTap: () {
                    print('onDoubleTap');
                  },
                  onLongPress: () {
                    print('onLongPress');
                  },
                  child: Container(
                    color: Colors.teal,
                    padding: EdgeInsets.all(10),
                    child: Text('Haz Click',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                

          ]),
      ),
    );
  }
}
