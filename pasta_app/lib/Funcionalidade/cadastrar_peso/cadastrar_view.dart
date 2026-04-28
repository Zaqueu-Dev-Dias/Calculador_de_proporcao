import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cadastrofinal.dart';
import 'casdastrar_viewmodel.dart';
class CadastrarView extends StatelessWidget {
  List<Widget> quantidade = [];
  CadastrarView({super.key});
  //cem() da erro
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quantidade', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Quantos ingrediente a sua receita tem?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: (){context.read<CadastrarViewModel>().subtrairquantidade();},child: Container(width: 80,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),color: Colors.blue),child: Center(child: Text('-', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),)))),
                Container(width: 80,height: 50,child: Center(child: Text('${context.watch<CadastrarViewModel>().fornecerquantidade()}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),))),
                GestureDetector(onTap: (){context.read<CadastrarViewModel>().somarquantidade();},child: Container(width: 80,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)), color: Colors.blue),child: Center(child: Text('+', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),)))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap:(){
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => Cadastrofinal(),
                ),
              );
            },child: Container(decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5)),width: 200, height: 75,child: Center(child: Text('Próximo ➡', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),)),)),
          )
        ],
      ),
    );
  }
}
