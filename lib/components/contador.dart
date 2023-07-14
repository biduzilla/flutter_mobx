import 'package:flutter/material.dart';
import 'package:mobxFlutter/model/item.dart';
import 'package:mobxFlutter/store/carrinho_store.dart';
import 'package:mobxFlutter/store/item_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Contador extends StatelessWidget {
  Contador({Key? key, required this.item}) : super(key: key);
  final Item item;

  final ItemStore itemStore = ItemStore();
  @override
  Widget build(BuildContext context) {
    final carrinhoStore = Provider.of<CarrinhoStore>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              itemStore.removeItem();
              carrinhoStore.removeCarrinho(item);
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
              carrinhoStore.addCarrinho(item);
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
