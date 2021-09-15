// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$animalsAtom = Atom(name: '_HomeStore.animals');

  @override
  List<AnimalModel> get animals {
    _$animalsAtom.reportRead();
    return super.animals;
  }

  @override
  set animals(List<AnimalModel> value) {
    _$animalsAtom.reportWrite(value, super.animals, () {
      super.animals = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$errorAtom = Atom(name: '_HomeStore.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$fetchAnimalsAsyncAction = AsyncAction('_HomeStore.fetchAnimals');

  @override
  Future fetchAnimals() {
    return _$fetchAnimalsAsyncAction.run(() => super.fetchAnimals());
  }

  @override
  String toString() {
    return '''
animals: ${animals},
loading: ${loading},
error: ${error}
    ''';
  }
}
