import 'package:ignite_flutter_todo_list/screens/components/todo_item_list_tile.dart';

import '../gerencia_de_estado/gerencia_de_estado.dart';

import '../shared/models/todo_item.dart';

class HomeController extends GerenciaDeEstado {
  HomeController() : super(initialState: "");

  final _toDoItemList = <ToDoItem>[];
  final _doneItemList = <ToDoItem>[];

  get toDoItemList => _toDoItemList;
  get doneItemList => _doneItemList;

  void onAddItem(String itemTitle) {
    _toDoItemList.add(
      ToDoItem(
        title: itemTitle,
      ),
    );
    setState(state);
  }

  void onResetItem(ToDoItem item) {
    _doneItemList.remove(item);

    _toDoItemList.add(
      ToDoItem(
        title: item.title,
      ),
    );
    setState(state);
  }

  void onRemoveToDoItem(ToDoItem item) {
    _toDoItemList.remove(item);
    setState(state);
  }

  void onRemoveDoneItem(ToDoItem item) {
    _doneItemList.remove(item);
    setState(state);
  }

  void onCompleteItem(ToDoItem item) {
    _toDoItemList.remove(item);

    _doneItemList.add(
      ToDoItem(
        title: item.title,
        isDone: true,
      ),
    );
    setState(state);
  }
}
