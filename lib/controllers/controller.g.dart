// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FirstLastNameController on FirstLastNameControllerBase, Store {
  final _$firstNameAtom = Atom(name: 'FirstLastNameControllerBase.firstName');

  @override
  String get firstName {
    _$firstNameAtom.context.enforceReadPolicy(_$firstNameAtom);
    _$firstNameAtom.reportObserved();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.context.conditionallyRunInAction(() {
      super.firstName = value;
      _$firstNameAtom.reportChanged();
    }, _$firstNameAtom, name: '${_$firstNameAtom.name}_set');
  }

  final _$lastNameAtom = Atom(name: 'FirstLastNameControllerBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.context.enforceReadPolicy(_$lastNameAtom);
    _$lastNameAtom.reportObserved();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.context.conditionallyRunInAction(() {
      super.lastName = value;
      _$lastNameAtom.reportChanged();
    }, _$lastNameAtom, name: '${_$lastNameAtom.name}_set');
  }

  final _$FirstLastNameControllerBaseActionController =
      ActionController(name: 'FirstLastNameControllerBase');

  @override
  dynamic changeFirstName(String _firstName) {
    final _$actionInfo =
        _$FirstLastNameControllerBaseActionController.startAction();
    try {
      return super.changeFirstName(_firstName);
    } finally {
      _$FirstLastNameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String _lastName) {
    final _$actionInfo =
        _$FirstLastNameControllerBaseActionController.startAction();
    try {
      return super.changeLastName(_lastName);
    } finally {
      _$FirstLastNameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'firstName: ${firstName.toString()},lastName: ${lastName.toString()}';
    return '{$string}';
  }
}

mixin _$IncrementController on IncrementControllerBase, Store {
  final _$counterAtom = Atom(name: 'IncrementControllerBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$IncrementControllerBaseActionController =
      ActionController(name: 'IncrementControllerBase');

  @override
  void increment() {
    final _$actionInfo =
        _$IncrementControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$IncrementControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'counter: ${counter.toString()}';
    return '{$string}';
  }
}
