import 'package:flutter/material.dart';
import 'package:tcesp/widgets/custom_app_bar.dart';
import 'package:tcesp/widgets/floating_action_button_center_docked.dart';
import 'package:tcesp/widgets/future_builder_portal_list.dart';
import 'package:tcesp/widgets/profile_content.dart';
import 'package:tcesp/widgets/tcesp_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FutureBuilderPortalList(),
    ProfileContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButtonLocation: FloatingActionButtonCenterDocked(height),
      floatingActionButton: TcespButton(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        items: [
          BottomNavigationBarItem(
            label: 'Portais',
            icon: Icon(Icons.web),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
// BottomAppBar(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[
//             Container(
//               height: 0,
//               width: 0,
//             ),
//             InkWell(
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 8.0,
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: 6.0,
//                     ),
//                     Icon(
//                       Icons.web,
//                       size: 24,
//                       color: Colors.black,
//                     ),
//                     Container(
//                       height: 2.0,
//                     ),
//                     Text(
//                       "Portais",
//                       style: TextStyle(
//                         fontSize: 12.0,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Container(
//                       height: 6.0,
//                     ),
//                   ],
//                 ),
//               ),
//               onTap: () {},
//             ),
//             Container(
//               height: 0,
//               width: 0,
//             ),
//             Container(
//               height: 0,
//               width: 0,
//             ),
//             Container(
//               height: 0,
//               width: 0,
//             ),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 8.0,
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       height: 6.0,
//                     ),
//                     Icon(
//                       Icons.person,
//                       size: 24,
//                       color: Colors.black,
//                     ),
//                     Container(
//                       height: 2.0,
//                     ),
//                     Text(
//                       "Perfil",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                     Container(
//                       height: 6.0,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: 0,
//               width: 0,
//             ),
//           ],
//           crossAxisAlignment: CrossAxisAlignment.center,
//         ),
//         color: Colors.grey[200],
//       ),
