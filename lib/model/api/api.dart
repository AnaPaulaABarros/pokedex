import 'dart:convert';

import 'package:http/http.dart' as http;

import '../pokedex.dart';

class ApiPokemon {
  Future<List<Pokedex>> obterPokemon() async {
    var url = Uri.parse('http://104.131.18.84/pokemon/?limit=50&page=0');
    final value = await http.get(url);
    {
      if (value.statusCode == 200) {
        Map json = const JsonDecoder().convert(value.body);

        return json['data'].map<Pokedex>((value) {
          return Pokedex.fromJson(value);
        }).toList();
      }
    }

    return [];
  }
}
