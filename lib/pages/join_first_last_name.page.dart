import 'package:app_mobx_todo_list/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class JoinFirstLastNamePage extends StatefulWidget {
  @override
  _JoinFirstLastNamePageState createState() => _JoinFirstLastNamePageState();
}

class _JoinFirstLastNamePageState extends State<JoinFirstLastNamePage> {
  final controller = FirstLastNameController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'First name'),
              onChanged: controller.changeFirstName,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last name'),
              onChanged: controller.changeLastName,
            ),
            SizedBox(height: 30),
            Observer(
              builder: (_) {
                return Text('${controller.fullName}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
