import 'package:pokedex_novo/model/api/api.dart';
import 'package:pokedex_novo/model/pokedex.dart';

class PokemonPresenter {
  final api = ApiPokemon();

  Future<List<Pokedex>> obter() async {
    return await api.obterPokemon();
  }
}
