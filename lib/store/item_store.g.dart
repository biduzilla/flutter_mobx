// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemStore on ItemStoreBase, Store {
  late final _$valorCountAtom =
      Atom(name: 'ItemStoreBase.valorCount', context: context);

  @override
  int get valorCount {
    _$valorCountAtom.reportRead();
    return super.valorCount;
  }

  @override
  set valorCount(int value) {
    _$valorCountAtom.reportWrite(value, super.valorCount, () {
      super.valorCount = value;
    });
  }

  late final _$ItemStoreBaseActionController =
      ActionController(name: 'ItemStoreBase', context: context);

  @override
  void addItem() {
    final _$actionInfo = _$ItemStoreBaseActionController.startAction(
        name: 'ItemStoreBase.addItem');
    try {
      return super.addItem();
    } finally {
      _$ItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem() {
    final _$actionInfo = _$ItemStoreBaseActionController.startAction(
        name: 'ItemStoreBase.removeItem');
    try {
      return super.removeItem();
    } finally {
      _$ItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valorCount: ${valorCount}
    ''';
  }
}
