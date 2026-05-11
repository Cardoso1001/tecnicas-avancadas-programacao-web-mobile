import 'package:flutter/material.dart';
// SEMPRE 'MATERIAL'

class EntradaApp extends StatelessWidget { // 1 Aplicativo
  @override
  Widget build(BuildContext context) { // Build 
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tira a faixa de debug em cima da execução
      title: 'APP 2 - Entrada de dados', // Título do aplicativo
      home: EntradaPage(), // Página inicial do aplicativo, a primeira a ser exibida, a raiz da árvore de widgets, o ponto de partida do aplicativo
    );
  }
}

// Página stateless, sem estado, sem interação, sem mudança de dados, apenas exibição de informações
// Como a tela da história da Fatec, por exemplo

// Página stateful, com estado, com interação, com mudança de dados
// Como a tela de login, por exemplo
class EntradaPage extends StatefulWidget { // cada app com suas n Páginas
  @override
  State<StatefulWidget> createState() { // createState
    return EntradaState(); // Estado dessa página
  }
}

class EntradaState extends State<EntradaPage> { // e cada página com seu único Estado
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page/State - Entrada de Dados')
        ),
      body: Padding( // Espaçamento interno do body, para não ficar colado nas bordas da tela
        padding: EdgeInsetsGeometry.all(200), // 200 pixels de espaçamento em todas as direções
        child: Column( // Coluna, para organizar os widgets em vertical
          children: [ // Como se fosse um vetor, chamado de 'filhos' e coleção
            TextField( // Campo de texto, para entrada de dados
              decoration: InputDecoration(
                labelText: 'Qual é o seu nome?',
              ),
            ),

            SizedBox( // Espaçamento entre widgets, para não ficar colado
              height: 100, // 100 pixels de altura
            ),

            TextField(
              decoration: InputDecoration(
                labelText: 'Qual é a sua idade?',
              ),
            ),
          ],
        )
      ), 


      // Sem padding

      // body: Column(
      //   children: [
      //     TextField(
      //       decoration: InputDecoration(
      //         labelText: 'Qual é o seu nome?',
      //       ),
      //     ),
      //     SizedBox(
      //       height: 100,
      //     ),
      //     TextField(
      //       decoration: InputDecoration(
      //         labelText: 'Qual é a sua idade?',
      //       ),
      //     ),
      //   ],
      //),


      // Caso fosse aparecer apenas um textField

      // body: TextField(
      //   decoration: InputDecoration(
      //     labelText: 'Qual é o seu nome?',
      //   ),
      //),

    );
  }
}