import 'package:flutter/material.dart';

class Tela2App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela 2 - Cadastro',
      home: Tela2Page(),
    );
    
  }
}

class Tela2Page extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    return Tela2State();
    
  }
}

class Tela2State extends State<Tela2Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(200),

        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o seu nome?',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é a sua idade?',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é o seu email?',
              ),
            ),


            TextButton(
              onPressed: (){

              }, 
              child: Text('Cadastrar'),
            ),
            
            // OutlinedButton(
            //   onPressed: (){

            //   },
            //   child: Text('Cadastrar'),
            // ),


          ],
        )
      )
    );
  }
}