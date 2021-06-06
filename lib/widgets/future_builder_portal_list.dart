import 'package:flutter/material.dart';
import 'package:tcesp/repository/portal_repository.dart';
import 'package:tcesp/themes/colors.dart';
import 'package:tcesp/widgets/portal_list.dart';

class FutureBuilderPortalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: PortalRepository().findAllAsync(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
              itemCount: snapshot.data == null ? 0 : snapshot.data.length,
              itemBuilder: (BuildContext context, index) {
                final portals = snapshot.data[index];

                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: PortalList(
                    portals: portals,
                  ),
                );
              },
            ),
          );
        } else {
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(TCESPGreyColor),
              ),
            ),
          );
        }
      },
    );
  }
}
