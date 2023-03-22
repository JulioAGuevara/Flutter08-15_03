import 'package:flutter/material.dart';

void main() => runApp(const ImagesPage());

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Imagen Local'),
        
              // Image.asset('images/shiba.jpg'),
        
              const Image(
                fit: BoxFit.cover,
                image: AssetImage('images/shiba.jpg'),
                ),
              Padding(padding: EdgeInsets.all(8.0),
              child: Text('Imagen por Internet'),),
              Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png')),
              
              Padding(padding: EdgeInsets.all(8.0),
              child: Text('Fade in Image'),
              ),
              FadeInImage(
                placeholder: AssetImage('images/shiba.jpg'), 
                image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png'),
                ),
            ],
            ),
        ),
        ),
         
    );
  }
}