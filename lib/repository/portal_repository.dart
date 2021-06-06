import 'package:tcesp/models/portal_model.dart';

import 'database.dart';

class PortalRepository {
  Future findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<PortalModel> portals = new List<PortalModel>();

    if (db.created) {
      portals = new List<PortalModel>();
      portals.add(
        new PortalModel(
          id: 1,
          name: 'Portal Campinas',
          image: 'bauru.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 2,
          name: 'Portal São José dos Campos',
          image: 'campinas.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 3,
          name: 'Portal São Paulo',
          image: 'saopaulo.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 4,
          name: 'Portal Osasco',
          image: 'osasco.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 5,
          name: 'Portal Suzano',
          image: 'suzano.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 6,
          name: 'Portal Jundiaí',
          image: 'jundiai.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 7,
          name: 'Portal Bauru',
          image: 'bauru.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 8,
          name: 'Portal Sorocaba',
          image: 'sorocaba.jpg',
        ),
      );
    }

    return new Future.value(portals);
  }
}
