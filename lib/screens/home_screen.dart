import 'package:flutter/material.dart';
import 'package:tcesp/models/portal_model.dart';
import 'package:tcesp/stores/portal.store.dart';
import 'package:tcesp/widgets/custom_app_bar.dart';
import 'package:tcesp/widgets/floating_action_button_center_docked.dart';
import 'package:tcesp/widgets/future_builder_portal_list.dart';
import 'package:tcesp/widgets/profile_content.dart';
import 'package:tcesp/widgets/tcesp_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final portalStore = PortalStore();

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FutureBuilderPortalList(portalStore: portalStore),
    ProfileContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    portalStore.add(
      new PortalModel(
        id: 1,
        name: 'Portal Campinas',
        image: 'bauru.jpg',
        isOverSpend: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButtonLocation: FloatingActionButtonCenterDocked(height),
      floatingActionButton: TcespButton(
        portalStore: portalStore,
      ),
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
