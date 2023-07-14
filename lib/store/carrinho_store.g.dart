// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on CarrinhoStoreBase, Store {
  Computed<int>? _$qtdItensComputed;

  @override
  int get qtdItens =>
      (_$qtdItensComputed ??= Computed<int>(() => super.qtdItens,
              name: 'CarrinhoStoreBase.qtdItens'))
          .value;
  Computed<bool>? _$isListVaziaComputed;

  @override
  bool get isListVazia =>
      (_$isListVaziaComputed ??= Computed<bool>(() => super.isListVazia,
              name: 'CarrinhoStoreBase.isListVazia'))
          .value;

  late final _$listaItensAtom =
      Atom(name: 'CarrinhoStoreBase.listaItens', context: context);

  @override
  List<Item> get listaItens {
    _$listaItensAtom.reportRead();
    return super.listaItens;
  }

  @override
  set listaItens(List<Item> value) {
    _$listaItensAtom.reportWrite(value, super.listaItens, () {
      super.listaItens = value;
    });
  }

  late final _$totalCompraAtom =
      Atom(name: 'CarrinhoStoreBase.totalCompra', context: context);

  @override
  double get totalCompra {
    _$totalCompraAtom.reportRead();
    return super.totalCompra;
  }

  @override
  set totalCompra(double value) {
    _$totalCompraAtom.reportWrite(value, super.totalCompra, () {
      super.totalCompra = value;
    });
  }

  late final _$CarrinhoStoreBaseActionController =
      ActionController(name: 'CarrinhoStoreBase', context: context);

  @override
  void addCarrinho(Item item) {
    final _$actionInfo = _$CarrinhoStoreBaseActionController.startAction(
        name: 'CarrinhoStoreBase.addCarrinho');
    try {
      return super.addCarrinho(item);
    } finally {
      _$CarrinhoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCarrinho(Item item) {
    final _$actionInfo = _$CarrinhoStoreBaseActionController.startAction(
        name: 'CarrinhoStoreBase.removeCarrinho');
    try {
      return super.removeCarrinho(item);
    } finally {
      _$CarrinhoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void atualizaTotalCompra() {
    final _$actionInfo = _$CarrinhoStoreBaseActionController.startAction(
        name: 'CarrinhoStoreBase.atualizaTotalCompra');
    try {
      return super.atualizaTotalCompra();
    } finally {
      _$CarrinhoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaItens: ${listaItens},
totalCompra: ${totalCompra},
qtdItens: ${qtdItens},
isListVazia: ${isListVazia}
    ''';
  }
}
