import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mobxFlutter/model/item.dart';

import 'contador.dart';

class Cartao extends StatelessWidget {
  const Cartao({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfff6f6f6),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 134),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage(item.uri),
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      item.nome,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("R\$ ${item.preco.toStringAsFixed(2)}"),
                  ),
                  Contador(
                    item: item,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
