// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListController on _TodoListControllerBase, Store {
  final _$_TodoListControllerBaseActionController =
      ActionController(name: '_TodoListControllerBase');

  @override
  dynamic addItem(ItemModel model) {
    final _$actionInfo =
        _$_TodoListControllerBaseActionController.startAction();
    try {
      return super.addItem(model);
    } finally {
      _$_TodoListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel model) {
    final _$actionInfo =
        _$_TodoListControllerBaseActionController.startAction();
    try {
      return super.removeItem(model);
    } finally {
      _$_TodoListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = '';
    return '{$string}';
  }
}
