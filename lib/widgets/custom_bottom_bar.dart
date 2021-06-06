import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 0,
            width: 0,
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 6.0,
                  ),
                  Icon(
                    Icons.web,
                    size: 24,
                    color: Colors.black,
                  ),
                  Container(
                    height: 2.0,
                  ),
                  Text(
                    "Portais",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 6.0,
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                "/home",
              );
            },
          ),
          Container(
            height: 0,
            width: 0,
          ),
          Container(
            height: 0,
            width: 0,
          ),
          Container(
            height: 0,
            width: 0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                "/profile",
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 6.0,
                  ),
                  Icon(
                    Icons.person,
                    size: 24,
                    color: Colors.black,
                  ),
                  Container(
                    height: 2.0,
                  ),
                  Text(
                    "Perfil",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                  Container(
                    height: 6.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 0,
            width: 0,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      color: Colors.grey[400],
    );
  }
}
