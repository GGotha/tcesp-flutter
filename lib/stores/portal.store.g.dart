// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PortalStore on _PortalStore, Store {
  final _$portalsAtom = Atom(name: '_PortalStore.portals');

  @override
  ObservableList<PortalModel> get portals {
    _$portalsAtom.reportRead();
    return super.portals;
  }

  @override
  set portals(ObservableList<PortalModel> value) {
    _$portalsAtom.reportWrite(value, super.portals, () {
      super.portals = value;
    });
  }

  final _$_PortalStoreActionController = ActionController(name: '_PortalStore');

  @override
  void add(PortalModel portal) {
    final _$actionInfo =
        _$_PortalStoreActionController.startAction(name: '_PortalStore.add');
    try {
      return super.add(portal);
    } finally {
      _$_PortalStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
portals: ${portals}
    ''';
  }
}
