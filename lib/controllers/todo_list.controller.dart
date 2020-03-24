import 'package:app_mobx_todo_list/controllers/item.model.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

part 'todo_list.controller.g.dart';

class TodoListController = _TodoListControllerBase with _$TodoListController;

abstract class _TodoListControllerBase with Store {
  final listItems = BehaviorSubject<List<ItemModel>>.seeded([]);
  final filter = BehaviorSubject<String>.seeded('');

  ObservableStream<List<ItemModel>> output;

  _TodoListControllerBase() {
    output = Rx.combineLatest2<List<ItemModel>, String, List<ItemModel>>(
      listItems.stream,
      filter.stream,
      (list, filter) {
        if (filter.isEmpty) {
          return list;
        } else {
          return list
              .where((item) =>
                  item.title.toLowerCase().contains(filter.toLowerCase()))
              .toList();
        }
      },
    ).asObservable(initialValue: []);
  }

  // 3348-4048 faturamento
  //
  // 26/03 8:30 -- chegar as 8:00
  //

  // @observable
  // ObservableList<ItemModel> listItems = [
  //   ItemModel(title: 'Item 1', checked: true),
  //   ItemModel(title: 'Item 2', checked: true),
  //   ItemModel(title: 'Item 3', checked: true),
  //   ItemModel(title: 'Item 4', checked: true),
  // ].asObservable();

  // @observable
  // String filter = '';

  // @action
  setFilter(value) => filter.add(value);

  // @computed
  // List<ItemModel> get filteredList {
  //   if (filter.isEmpty) {
  //     return listItems;
  //   } else {
  //     return listItems
  //         .where(
  //             (item) => item.title.toLowerCase().contains(filter.toLowerCase()))
  //         .toList();
  //   }
  // }

  // @computed
  int get totalChecked => output.value.where((item) => item.checked).length;

  @action
  addItem(ItemModel model) {
    var list = List<ItemModel>.from(listItems.value);
    list.add(model);
    listItems.add(list);
  }

  @action
  removeItem(ItemModel model) {
    var list = List<ItemModel>.from(listItems.value);
    list.removeWhere((item) => item.title == model.title);
    listItems.add(list);
  }
}
