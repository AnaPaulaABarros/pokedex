
import 'package:flutter/material.dart';
import 'package:pokedex_novo/model/pokedex.dart';
import 'package:pokedex_novo/view/detalhe/detalhe.dart';

class Pokeitem extends StatelessWidget {

  final Pokedex item;
  
  const Pokeitem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top:10,left: 3,right: 3,bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 5,
      child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PokeDetalhe(item: item)));
          },
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                width: 60,
                height: 60,
                child: Image.network(
                  item.thumbnailImage ?? '',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 80,
                child: Text(item.name ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox.fromSize(
                size: const Size(110, 60),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40),
                padding: const EdgeInsets.all(2),
                child: Text('#${item.number ?? ''}', textAlign: TextAlign.end),
              ),
            ],
          )),
    );
  }
}