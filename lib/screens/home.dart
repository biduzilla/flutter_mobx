import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxFlutter/components/categoria_text.dart';
import 'package:mobxFlutter/components/item_list.dart';
import 'package:mobxFlutter/components/search_input.dart';
import 'package:mobxFlutter/screens/checkout.dart';
import 'package:mobxFlutter/store/carrinho_store.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController searchInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final carrinhoStore = Provider.of<CarrinhoStore>(context, listen: false);
    final BuildContext homeContext = context;

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SearchInput(searchTextController: searchInput),
            ),
            const SliverToBoxAdapter(
              child: CategoriaText(titulo: "Mais Comprados"),
            ),
            const SliverToBoxAdapter(
              child: ItemList(categoria: "mais comprados"),
            ),
            const SliverToBoxAdapter(
                child: CategoriaText(titulo: 'Para o almoço')),
            const SliverToBoxAdapter(
                child: ItemList(
              categoria: 'para o almoço',
            )),
            const SliverToBoxAdapter(
                child: CategoriaText(titulo: "Para dividir")),
            const SliverToBoxAdapter(
              child: ItemList(categoria: "para dividir"),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Observer(
                    builder: (_) => !carrinhoStore.isListVazia
                        ? InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Checkout(
                                  homeContext: homeContext,
                                );
                              }));
                            },
                            child: Ink(
                              width: double.infinity,
                              height: 80,
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.surfaceTint,
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(10))),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Text(
                                              "${carrinhoStore.qtdItens}",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                              ),
                                            )),
                                        Icon(
                                          Icons.shopping_basket_outlined,
                                          size: 24,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Ver carrinho",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "R\$ ${carrinhoStore.totalCompra.toStringAsFixed(2)}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
