import 'package:flutter/material.dart';
import 'package:lista/Tema.dart';
import 'package:lista/listaContatos.dart';
import 'package:lista/contato.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: MeuTema.tema,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Contato> contatos = [
    Contato(1, 'Ana', '99999-1111', 'img1.jpg'),
    Contato(2, 'Roberta', '99999-2222', 'img2.jpg'),
    Contato(3, 'Carlos', '99999-3333', 'img3.jpg'),
    Contato(4, 'Daniela', '99999-4444', 'img4.jpg'),
    Contato(5, 'Junior', '99999-5555', 'img5.jpg'),
    Contato(6, 'Fabiana', '99999-6666', 'img6.jpg'),
    Contato(7, 'Gabriel', '99999-7777', 'img7.jpg'),
    Contato(8, 'Henrique', '99999-8888', 'img8.jpg'),
    Contato(9, 'Juliana', '99999-9999', 'img9.jpg'),
    Contato(10, 'Julia', '88888-1111', 'img10.jpg'),
    Contato(11, 'Maria', '88888-2222', 'img11.jpg'),
    Contato(12, 'Leticia', '88888-3333', 'img12.jpg'),
    Contato(13, 'Mario', '88888-4444', 'img13.jpg'),
    Contato(14, 'Natalia', '88888-5555', 'img14.jpg'),
    Contato(15, 'Olivia', '88888-6666', 'img15.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Lista de contatos",
      )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ListaContatos(contatos: contatos)],
        ),
      ),
    );
  }
}
