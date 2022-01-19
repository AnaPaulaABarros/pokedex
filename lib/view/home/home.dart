import 'package:flutter/material.dart';
import 'package:pokedex_novo/presenter/home_presenter.dart';
import 'package:pokedex_novo/view/item/item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
 bool future = true;
 
  @override
  void didChangeDependencies() {
    context.read<HomePresenter>().obter();
    super.didChangeDependencies();
    //utilizado para notificar o objeto atual sobre a mudança.
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
        //permite reconstruir widgets, alterar, local que pode ter a mudança de estado
        body: Consumer<HomePresenter>(
          builder: (context, value, child) {
            if (value.pokemons.isEmpty)
              return const Center(child: CircularProgressIndicator());
            return ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: value.pokemons.length, // para especificar o comprimento da lista.
                itemBuilder: (context, index) { // constrói a lista indexada de itens
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
