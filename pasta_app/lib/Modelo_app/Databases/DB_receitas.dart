
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ReceitaDB{
  late Database database; // variavel onde vai ser passada o objeto de banco de dados <-

  Future<Database> inicializarbd()async{
    if(database != null){ // verificar se o banco de dados esta aberto para não abrir de novo.
      return database; // ja esta aberto
    }else{ // abrir banco de dados.
      return  database = await openDatabase(
          join(
            await getDatabasesPath(),'arquivoreceita.db'), // ir na pasta de banco de dados do celular e criar um arquivo DB.
            version: 1, // versão do banco
            onCreate: (db, versao)async{ // função de criar a tebela com as colunas.
                  await db.execute('CREATE TABLE receitas(id INTEGER PRIMARY KEY AUTOINCREMENT, nomereceita TEXT, receita TEXT)');
            },
      );
    }
  }

}
