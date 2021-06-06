import 'package:cached_network_image/cached_network_image.dart';
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
              child: CachedNetworkImage(
                imageUrl: '${portals.image}',
                placeholder: (context, url) => Container(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(TCESPGreyColor),
                      ),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
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
