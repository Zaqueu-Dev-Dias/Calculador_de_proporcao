import 'package:flutter/material.dart';

import 'Lista_receita_view.dart';
import 'carregamentoview.dart';
import 'naocadastradoview.dart';

class Viewprincipal extends StatelessWidget {
  const Viewprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Proporção receita',style: TextStyle(color: Colors.white),),backgroundColor: Colors.green,),
      body: ListaReceitaView(),
    );
  }
}
