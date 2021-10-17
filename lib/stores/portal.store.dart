import 'package:mobx/mobx.dart';
import 'package:tcesp/models/portal_model.dart';
part 'portal.store.g.dart';

class PortalStore = _PortalStore with _$PortalStore;

abstract class _PortalStore with Store {
  @observable
  var portals = ObservableList<PortalModel>();

  @action
  void add(PortalModel portal) {
    portals.add(portal);
  }
}
