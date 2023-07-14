import 'package:mobx/mobx.dart';
part 'item_store.g.dart';

class ItemStore = ItemStoreBase with _$ItemStore;

abstract class ItemStoreBase with Store {
  @observable
  int valorCount = 0;

  @action
  void addItem() {
    valorCount++;
  }

  @action
  void removeItem() {
    if (valorCount < 0) {
      valorCount--;
    }
  }
}
