// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemModel on _ItemModelBase, Store {
  final _$titleAtom = Atom(name: '_ItemModelBase.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$checkedAtom = Atom(name: '_ItemModelBase.checked');

  @override
  bool get checked {
    _$checkedAtom.context.enforceReadPolicy(_$checkedAtom);
    _$checkedAtom.reportObserved();
    return super.checked;
  }

  @override
  set checked(bool value) {
    _$checkedAtom.context.conditionallyRunInAction(() {
      super.checked = value;
      _$checkedAtom.reportChanged();
    }, _$checkedAtom, name: '${_$checkedAtom.name}_set');
  }

  final _$_ItemModelBaseActionController =
      ActionController(name: '_ItemModelBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction();
    try {
      return super.setTitle(value);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setChecked(bool value) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction();
    try {
      return super.setChecked(value);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'title: ${title.toString()},checked: ${checked.toString()}';
    return '{$string}';
  }
}
