import 'package:flutter/material.dart';
//import 'package:pokedex_novo/model/pokedex.dart';
import 'package:pokedex_novo/presenter/home_presenter.dart';
import 'package:pokedex_novo/view/item/item.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // List<Pokedex> pokeList = [];
  //late HomePresenter presenter;

  //@override
  //void initState() {
  //  super.initState();
 // }

  @override
  void didChangeDependencies() {
    context.read<HomePresenter>().obter();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Container(
              child: const Text('Pokedex'),
            ),
            SizedBox.fromSize(
              size: const Size(250, 60),
            ),
            Image.network(
              'https://raw.githubusercontent.com/RafaelBarbosatec/SimplePokedex/master/assets/pokebola_img.png',
              height: 30,
            ),
          ],
        )
        ),
        body: Consumer<HomePresenter>(
          builder: (context, value, child) {
            if (value.pokemons.isEmpty)
              return const Center(child: CircularProgressIndicator());
            return ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: value.pokemons.length,
                itemBuilder: (context, index) {
                  return Pokeitem(
                    item: value.pokemons[index],
                  );
                }
                );
          },
        )
        );
  }
}
