import 'package:flutter/foundation.dart';
import 'package:pokedex_novo/model/api/api.dart';
import 'package:pokedex_novo/model/pokedex.dart';

class HomePresenter extends ChangeNotifier {
  final api = ApiPokemon();

  List<Pokedex> pokemons = [];

  Future<void> obter() async {
    pokemons = await api.obterPokemon();

    notifyListeners();
  }
}
