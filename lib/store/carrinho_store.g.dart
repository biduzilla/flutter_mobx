// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on CarrinhoStoreBase, Store {
  late final _$qtdCarrinhoAtom =
      Atom(name: 'CarrinhoStoreBase.qtdCarrinho', context: context);

  @override
  int get qtdCarrinho {
    _$qtdCarrinhoAtom.reportRead();
    return super.qtdCarrinho;
  }

  @override
  set qtdCarrinho(int value) {
    _$qtdCarrinhoAtom.reportWrite(value, super.qtdCarrinho, () {
      super.qtdCarrinho = value;
    });
  }

  late final _$CarrinhoStoreBaseActionController =
      ActionController(name: 'CarrinhoStoreBase', context: context);

  @override
  void addCarrinho() {
    final _$actionInfo = _$CarrinhoStoreBaseActionController.startAction(
        name: 'CarrinhoStoreBase.addCarrinho');
    try {
      return super.addCarrinho();
    } finally {
      _$CarrinhoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCarrinho() {
    final _$actionInfo = _$CarrinhoStoreBaseActionController.startAction(
        name: 'CarrinhoStoreBase.removeCarrinho');
    try {
      return super.removeCarrinho();
    } finally {
      _$CarrinhoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
qtdCarrinho: ${qtdCarrinho}
    ''';
  }
}
