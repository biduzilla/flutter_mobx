import 'package:mobx/mobx.dart';
import 'package:mobxFlutter/model/item.dart';
part 'carrinho_store.g.dart';

class CarrinhoStore = CarrinhoStoreBase with _$CarrinhoStore;

abstract class CarrinhoStoreBase with Store {
  @observable
  List<Item> listaItens = ObservableList<Item>();

  @observable
  double totalCompra = 0;

  @computed
  int get qtdItens => listaItens.length;

  @computed
  bool get isListVazia => listaItens.isEmpty;

  @action
  void addCarrinho(Item item) {
    listaItens.add(item);
    atualizaTotalCompra();
  }

  @action
  void removeCarrinho(Item item) {
    listaItens.remove(item);
    atualizaTotalCompra();
  }

  @action
  void atualizaTotalCompra() {
    totalCompra = 0;
    listaItens.forEach((element) {
      totalCompra += element.preco;
    });
  }
}
