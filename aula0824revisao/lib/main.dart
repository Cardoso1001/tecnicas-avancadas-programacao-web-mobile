import 'package:aula0824revisao/revisao/produto_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AMSApp());
}

class AMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto AMS',
      home: ProdutoPage(),
    );
  }
}

