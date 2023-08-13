// ignore_for_file: file_names, prefer_const_constructors, avoid_print, body_might_complete_normally_nullable, prefer_final_fields, prefer_collection_literals

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  _carregarItens(){

    for (var i = 0; i <= 10; i++) {

      Map<String, dynamic> item = Map();
      item['titulo'] = 'Título $i Lorem ipsum dolor sit amet.';
      item['descricao'] = 'Descrição $i ipsum dolor sit amet.';
      _itens.add(item);
      
    }

  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            print('item: ${_itens[indice]['titulo']}');
            print('item: ${_itens[indice]['descricao']}');

            return ListTile(
              title: Text('${_itens[indice]['titulo']}'),
              subtitle: Text('${_itens[indice]['descricao']}'),
            );
          }),
      ),
    );
  }
}