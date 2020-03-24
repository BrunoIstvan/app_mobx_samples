import 'package:mobx/mobx.dart';

part 'item.model.g.dart';

class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase with Store {
  _ItemModelBase({this.title, this.checked = false});

  @observable
  String title;

  @observable
  bool checked;

  @action
  setTitle(String value) => title = value;

  @action
  setChecked(bool value) => checked = value;
}
