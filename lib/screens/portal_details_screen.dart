import 'package:flutter/material.dart';
import 'package:tcesp/models/portal_model.dart';
import 'package:tcesp/themes/colors.dart';
import 'package:tcesp/widgets/custom_app_bar.dart';
import 'package:tcesp/widgets/row_is_over_spend_portal.dart';

class PortalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PortalModel portals = ModalRoute.of(context).settings.arguments;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        hasLeading: true,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Image(
                  width: double.infinity,
                  image: AssetImage(
                    'assets/images/${portals.image}',
                  ),
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
              Text('Faça o download do documento no botão abaixo.'),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 2,
              child: RowIsOverSpendPortal(
                isOverSpend: portals.isOverSpend,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.file_download),
        backgroundColor: TCESPRedColor,
        onPressed: () {},
      ),
    );
  }
}
