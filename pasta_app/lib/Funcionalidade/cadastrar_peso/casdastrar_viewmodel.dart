import 'package:flutter/cupertino.dart';
import 'package:proporcao_app/Modelo_app/Repositorio/receitasrepositorio.dart';
import 'package:provider/provider.dart';

import '../../Modelo_app/Databases/DB_receitas.dart';

class CadastrarViewModel extends ChangeNotifier{

  int quantidadeingrediente = 0;
  Map<String,List> ingredientes = {};
  late String nome_receita;
  //Repositorioreceita repo;
  CadastrarViewModel();

  void inserirquantidade(int q){
    this.quantidadeingrediente = q;
  }

  void inseriringrediente(String ingre, double quan, String unid){
      this.ingredientes["${ingre}"]=  ["${unid}",quan];
  }

  int fornecerquantidade(){
    return this.quantidadeingrediente;
  }

  void somarquantidade(){
    this.quantidadeingrediente++;
    notifyListeners();
  }

  void subtrairquantidade(){
    this.quantidadeingrediente--;
    if(quantidadeingrediente <0){
      this.quantidadeingrediente = 0;
    }
    notifyListeners();
  }
}
