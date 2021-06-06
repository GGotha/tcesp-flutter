import 'package:flutter/material.dart';
import 'package:tcesp/models/portal_model.dart';
import 'package:tcesp/themes/colors.dart';
import 'package:tcesp/widgets/custom_app_bar.dart';

class PortalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PortalModel portals = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        hasLeading: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/${portals.image}'),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '${portals.name}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Text('Faça o download do documento no botão abaixo.')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.file_download),
        backgroundColor: TCESPRedColor,
        onPressed: () {},
      ),
    );
  }
}
