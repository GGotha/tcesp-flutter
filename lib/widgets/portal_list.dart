import 'package:flutter/material.dart';
import 'package:tcesp/themes/colors.dart';

// ignore: must_be_immutable
class PortalList extends StatelessWidget {
  final portals;

  PortalList({
    Key key,
    @required this.portals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: TCESPGreyColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                "/details",
                arguments: portals,
              );
            },
            child: ListTile(
              title: Text(
                '${portals.name}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
