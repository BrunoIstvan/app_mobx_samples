import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class IncrementController = IncrementControllerBase 
    with _$IncrementController;

class FirstLastNameController = FirstLastNameControllerBase
    with _$FirstLastNameController;

abstract class FirstLastNameControllerBase with Store {
  @observable
  String firstName = '';

  @observable
  String lastName = '';

  String get fullName => '$firstName $lastName';

  @action
  changeFirstName(String _firstName) {
    firstName = _firstName;
  }

  @action
  changeLastName(String _lastName) {
    lastName = _lastName;
  }
}

abstract class IncrementControllerBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
