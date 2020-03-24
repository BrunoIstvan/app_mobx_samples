import 'package:app_mobx_todo_list/controllers/item.model.dart';
import 'package:app_mobx_todo_list/controllers/todo_list.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  var controller = TodoListController();

  _dialog() {
    var model = ItemModel();

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('Adicionar item'),
          content: TextField(
            onChanged: model.setTitle,
            decoration: InputDecoration(
                labelText: 'Novo item', border: OutlineInputBorder()),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Salvar'),
              onPressed: () {
                controller.addItem(model);
                Navigator.pop(context);
              },
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: 'Pesquisar aqui...'),
          onChanged: controller.setFilter,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Observer(
              builder: (_) {
                return Text('${controller.totalChecked}');
              },
            ),
          ),
        ],
      ),
      body: Observer(builder: (_) {
        if (controller.output.data == null) {
          return Center(
            child: Text('Nenhum registro encontrado'),
          );
        }

        return ListView.builder(
          itemCount: controller.output.data.length,
          itemBuilder: (context, index) {
            var item = controller.output.data[index];
            return ItemWidget(
              item: item,
              removeClicked: () {
                controller.removeItem(item);
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final Function removeClicked;

  ItemWidget({this.item, this.removeClicked});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(item.title),
          leading: Checkbox(
            value: item.checked,
            onChanged: item.setChecked,
          ),
          trailing: IconButton(
            onPressed: removeClicked,
            icon: Icon(
              Icons.remove_circle,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
