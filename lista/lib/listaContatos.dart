import 'package:flutter/material.dart';
import 'contato.dart';
import 'detalhesContato.dart';

class ListaContatos extends StatefulWidget {
  final List<Contato> contatos;

  const ListaContatos({Key? key, required this.contatos}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widget.contatos.map((contato) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetalhesContato(contato: contato)),
            );
          },
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(0.5),
                  child: Image.asset(
                    contato.imagem,
                    width: 90,
                    height: 90,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      contato.nome,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(contato.telefone,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey))
                  ],
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.circle,
                        color: Color.fromARGB(255, 110, 252, 1)))
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
