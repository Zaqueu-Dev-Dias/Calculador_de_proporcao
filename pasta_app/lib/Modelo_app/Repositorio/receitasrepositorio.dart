
import 'dart:convert';

import '../Databases/DB_receitas.dart';

class Repositorioreceita{

  late ReceitaDB _bancodedados;

  Repositorioreceita(this._bancodedados);
  
  void inserir(Map<String,List> mapa, String receita)async{
    if(_bancodedados.database != null){
      await _bancodedados.database.insert('receitas', {'nomereceita':receita, 'receita':jsonEncode(mapa)});
    }else{
      await _bancodedados.inicializarbd();
      await _bancodedados.database.insert('receitas', {'nomereceita':receita, 'receita':jsonEncode(mapa)});
    }
  }

  Future<List<Map<String, Object?>>>? trazerdados()async{
    if(_bancodedados.database != null){
      return await _bancodedados.database.query('receitas');
    }else{
      await _bancodedados.inicializarbd();
      return await _bancodedados.database.query('receitas');
    }
  }
}