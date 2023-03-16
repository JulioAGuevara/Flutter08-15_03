import 'package:flutter/material.dart';

void main() => runApp(const Lista2Page());

class Lista2Page extends StatelessWidget {
  const Lista2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            title:  Text('Titulo'),
            leading: Icon(Icons.share),
            trailing:  Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('0'),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
          );
        } ,
        separatorBuilder: (context,indext){
          return const Divider(
            color: Colors.red,
          );
        } ,
        itemCount: 10,
      ),
    );
      
    
  }
}