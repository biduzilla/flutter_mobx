import 'package:mobx/mobx.dart';
import 'package:mobxFlutter/model/item.dart';
part 'carrinho_store.g.dart';

class CarrinhoStore = CarrinhoStoreBase with _$CarrinhoStore;

abstract class CarrinhoStoreBase with Store {
  @observable
  List<Item> listaItens = ObservableList<Item>();

  @computed
  int get qtdItens => listaItens.length;

  @computed
  bool get isListVazia => listaItens.isEmpty;

  @action
  void addCarrinho(Item item) {
    listaItens.add(item);
  }

  @action
  void removeCarrinho(Item item) {
    listaItens.remove(item);
  }
}
