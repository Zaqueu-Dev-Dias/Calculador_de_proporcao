import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Funcionalidade/cadastrar_peso/casdastrar_viewmodel.dart';
import 'Funcionalidade/tela_principal/Lista_receita_view.dart';
import 'Funcionalidade/tela_principal/naocadastradoview.dart';
import 'Funcionalidade/tela_principal/receita_selecionada.dart';
import 'Funcionalidade/tela_principal/viewprincipal.dart';
import 'Modelo_app/Databases/DB_receitas.dart';
import 'Modelo_app/Repositorio/receitasrepositorio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (BuildContext contexto) => CadastrarViewModel())
  ],child: MaterialApp(home:Container(),),),
  );
}


