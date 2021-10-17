import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tcesp/repository/portal_repository.dart';
import 'package:tcesp/themes/colors.dart';
import 'package:tcesp/widgets/portal_list.dart';

class FutureBuilderPortalList extends StatelessWidget {
  FutureBuilderPortalList({this.portalStore});

  final portalStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          itemCount: portalStore.portals.length,
          itemBuilder: (context, index) {
            print(portalStore.portals[0]);
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: PortalList(
                portals: portalStore.portals[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
