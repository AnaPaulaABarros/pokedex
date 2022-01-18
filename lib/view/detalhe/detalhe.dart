import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_novo/model/pokedex.dart';

class PokeDetalhe extends StatelessWidget {
  final Pokedex item;
  const PokeDetalhe({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${item.name}'),
      ),
      body: Card(
        color: Colors.white,
        margin:
            const EdgeInsets.only(bottom: 200, top: 20, right: 20, left: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 4,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  height: 200,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 22, left: 22),
                        height: 200,
                        width: 200,
                        color: Colors.grey[300],
                        child: Image.network(
                          item.thumbnailImage ?? '',
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Text('#${item.number}',
                              textAlign: TextAlign.end)),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 5, left: 20, right: 20, bottom: 20),
              alignment: Alignment.center,
              child: Text(
                '${item.description}',
                style: const TextStyle(fontSize: 15.0),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              color: Colors.grey.shade100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 5),
                  child: const Text(
                    'Tipo:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Text(
                    '${item.type}',
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                  color: Colors.grey.shade100,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 5),
                  child: const Text(
                    'Fraquezas:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Text(
                    '${item.weakness}',
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
