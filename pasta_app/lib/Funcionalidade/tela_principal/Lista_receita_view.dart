import 'package:flutter/material.dart';

class ListaReceitaView extends StatelessWidget {
  ListaReceitaView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> alista = gerarlista(context);
    return Scaffold(
      appBar: AppBar(title: Text('As receitas'),backgroundColor: Colors.green,),
      body: ListView.builder(itemCount: alista.length,itemBuilder: (context, indice){
        return alista[indice];
      }),
    );
  }
}


List<Widget> gerarlista(BuildContext contexto){
  List<Widget> dadoslista = [];
  for(int numero = 0; numero <=20;numero++){
    dadoslista.add(Container(
      width: MediaQuery.of(contexto).size.width,
      height: 100,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Center(child: Text('Massa de pizza',style: TextStyle(fontSize: 25),)),));
  }
  return dadoslista;
}