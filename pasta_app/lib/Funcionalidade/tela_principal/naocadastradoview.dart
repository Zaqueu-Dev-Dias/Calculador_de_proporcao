import 'package:flutter/material.dart';

class Naocadastradoview extends StatelessWidget {
  const Naocadastradoview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text('Não tem receitas cadastradas 🤷🏽‍♀️',style: TextStyle(fontSize: 30,color: Colors.black),),),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(width: 190,height: 90,child: Center(child: Text('cadastrar',style: TextStyle(fontSize:30,color: Colors.white),)),decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),),
          )],),
    );;
  }
}
