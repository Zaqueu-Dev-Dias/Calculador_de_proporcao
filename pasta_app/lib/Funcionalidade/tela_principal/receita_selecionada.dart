import 'package:flutter/material.dart';

class ReceitaSelecionada extends StatelessWidget {
  const ReceitaSelecionada({super.key});

  @override
  Widget build(BuildContext context) {
    var lista = cadaingrediente(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Massa de Pizza'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, indice) {
          return lista[indice];
        },
      ),
    );
  }
}

List<Widget> cadaingrediente(BuildContext context) {
  List<Widget> ingre = [];
  for (int nume = 0; nume <= 10; nume++) {
    ingre.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fermento',style: TextStyle(fontSize: 25),),
              Row(
                children: [
                  Container(width: 40, height: 40, color: Colors.blue,child: Center(child: Text('-',style: TextStyle(color: Colors.white,fontSize: 30),)),),
                  Container(width: 70, height: 40,child: Center(child: Text('25000', style: TextStyle(color: Colors.red,fontSize: 20),)),),
                  Container(width: 40, height: 40, color: Colors.blue,child: Center(child: Text('+',style: TextStyle(color: Colors.white,fontSize: 30),)),),
                ],
              ),
              Text('Kg',style: TextStyle(fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
  return ingre;
}
