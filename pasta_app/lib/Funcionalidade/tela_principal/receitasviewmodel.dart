import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../Modelo_app/Databases/DB_receitas.dart';

class ReceitasViewModel extends ChangeNotifier{

  late ReceitaDB bancodedados;
  late var dadosestado;
  ReceitasViewModel(this.bancodedados);


  Future<void> trazerestado()async{
    dadosestado = await bancodedados.database.query('receitas');
    notifyListeners();
  }



}