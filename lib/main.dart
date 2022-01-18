import 'package:flutter/material.dart';
import 'package:pokedex_novo/presenter/home_presenter.dart';
import 'package:pokedex_novo/view/detalhe/detalhe.dart';
import 'package:pokedex_novo/view/home/home.dart';
import 'package:provider/provider.dart';
import 'model/pokedex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePresenter(), 
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
      //initialRoute: '/',
    //routes: {
    //  '/': (context) =>  HomePage(),
   //  '/detalhe': (context) => PokeDetalhe(
    //     item: ModalRoute.of(context)?.settings.arguments as Pokedex),
   //   },
    ));
  
  }
}
  // precisa das rotas com a presenter??


