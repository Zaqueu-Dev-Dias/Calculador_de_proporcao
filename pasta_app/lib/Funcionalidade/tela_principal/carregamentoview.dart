import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proporcao_app/Funcionalidade/tela_principal/receitasviewmodel.dart';
import 'package:provider/provider.dart';

import 'Lista_receita_view.dart';
import 'naocadastradoview.dart';
class Carregamentoview extends StatelessWidget {

  Carregamentoview({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: context.watch<ReceitasViewModel>().trazerestado(), builder: (contexto, AsyncSnapshot situacao){
      if(situacao.hasData){
        context.read<ReceitasViewModel>().dadosestado = situacao.data;
        if(listEquals(contexto.watch<ReceitasViewModel>().dadosestado, [])){
          return Naocadastradoview();
        }else{
          return ListaReceitaView();
        }
      };
      if(situacao.hasError){
          return Container(child: Center(child: Text('ERRO ❌'),),);
      };
      return Container(child: Center(child: CircularProgressIndicator(),),);
    });
  }

}
