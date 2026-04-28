import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'casdastrar_viewmodel.dart';

class Cadastrofinal extends StatelessWidget {
   Cadastrofinal({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget>etd = gerarentradas(context);
    print('QUANTIDADE -> ${etd.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro final'),
        backgroundColor: Colors.green,
      ),
      body: Container(width: MediaQuery.of(context).size.width,height: 700,child: ListView.builder(itemCount: etd.length,itemBuilder: (BuildContext contexto, int numero){return etd[numero];})),
    );
  }
}

List<Widget> gerarentradas(BuildContext contexto) { // contexto onde esta o objetomodel que o provider fornece
  List<Widget> entradas = [];
  entradas.add(Container(child: Column(children: [Text('Nome da receita:',style: TextStyle(fontSize: 25),), Container(width: 200,child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),)],),));
  for (int nume = 1; nume <= contexto.watch<CadastrarViewModel>().fornecerquantidade(); nume++) {
    entradas.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingrediente', style: TextStyle(fontSize: 20),),
                    Container(width: 200,child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(children: [
                        Text('Quantidade', style: TextStyle(fontSize: 20),),
                        Container(width: 150,child: TextField(keyboardType: TextInputType.number,decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),))],
                      ),
                      Column(children: [
                        Text('Uni.medida', style: TextStyle(fontSize: 20),), DropdownButton( // CRIAR UM OBJETO
                          value: 'Kg',
                          items: [
                            DropdownMenuItem(value: 'Kg',child: Text('Kg')), // Kg
                            DropdownMenuItem(value: 'g', child: Text('g'),),//g
                            DropdownMenuItem(value: 'L',child: Text('L')),//L
                            DropdownMenuItem(value: 'mL ',child: Text('mL')),//mL
                          ], onChanged: (dynamic valor) {}),],)
                    ],)
                  ],
                ),
                Text('${nume}',style: TextStyle(fontSize: 60),)
              ],
            ),
          ),
        ),
      ),
    );
  }
  entradas.add(Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: Center(child: Container(width: 150, height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue),child: Center(child: Text('Proximo ➡', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),)),),),
  ));
  return entradas;
}


//SE FOR UM 1.500 GRAMAS. UM QUILO E MEIO.