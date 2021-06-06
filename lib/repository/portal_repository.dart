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
          image:
              'https://s2.glbimg.com/KsZMXqzEP_KqzofbYIiZFeRX2SM=/0x0:1000x664/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/p/W/rZPacUTXeOBYrFGAAnBA/campinas.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 2,
          name: 'Portal São José dos Campos',
          image:
              'https://i.pinimg.com/originals/e1/61/bb/e161bb326435d393fb309c9255a885fb.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 3,
          name: 'Portal São Paulo',
          image: 'https://i.ytimg.com/vi/A3pBJTTjwCM/maxresdefault.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 4,
          name: 'Portal Osasco',
          image:
              'https://cdn.britannica.com/77/121977-004-AC61DDDF/Osasco-Braz.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 5,
          name: 'Portal Suzano',
          image:
              'https://www.suzano.sp.gov.br/web/wp-content/uploads/2017/06/2017_01_24_Geral-da-Cidade-_Wanderley-Costa-9-700x396.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 6,
          name: 'Portal Jundiaí',
          image:
              'https://upload.wikimedia.org/wikipedia/commons/c/c2/001_Jundia%C3%AD.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 7,
          name: 'Portal Bauru',
          image:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Bauru.jpg/1200px-Bauru.jpg',
        ),
      );
      portals.add(
        new PortalModel(
          id: 8,
          name: 'Portal Sorocaba',
          image:
              'https://lh3.googleusercontent.com/proxy/R4LtmiNRoD0aNTu2dkWQsQEwUPMTa5ntkWCq4DKNS4DLAi_0-M5XpEiSPfu4GQWcOusY3gRF0TmBRkS4OA7eI2hnFOxDx85XfS--jEBs6XyoINZhoNcsKifESNIiDuA',
        ),
      );
    }

    return new Future.value(portals);
  }
}
