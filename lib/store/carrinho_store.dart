import 'package:mobx/mobx.dart';
part 'carrinho_store.g.dart';

class CarrinhoStore = CarrinhoStoreBase with _$CarrinhoStore;

abstract class CarrinhoStoreBase with Store {
  @observable
  int qtdCarrinho = 0;

  @action
  void addCarrinho() {
    qtdCarrinho++;
  }

  @action
  void removeCarrinho() {
    if (qtdCarrinho < 0) {
      qtdCarrinho--;
    }
  }
}
