import 'package:flutter/material.dart';
import 'package:mobxFlutter/store/item_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Contador extends StatelessWidget {
  Contador({Key? key}) : super(key: key);

  final ItemStore itemStore = ItemStore();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              itemStore.removeItem();
            },
            child: const Icon(
              Icons.remove_circle_outline,
              size: 20,
            ),
          ),
          Text(itemStore.valorCount.toString()),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              itemStore.addItem();
            },
            child: const Icon(
              Icons.add_circle_outline,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
