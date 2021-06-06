import 'package:flutter/material.dart';
import 'package:tcesp/themes/colors.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: CircleAvatar(
                backgroundColor: TCESPGreyColor,
                radius: 80,
                child: Image(
                  image: AssetImage('assets/images/avatar.jpg'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Cauã Tiago Daniel Araújo'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('cauatiago@gmail.com.br'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('840.049.471-70'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Advogado Trabalhista'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Fortaleza - CE - 60531-500 - Conjunto Ceará 733'),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: RaisedButton(
                  color: TCESPRedColor,
                  onPressed: () {},
                  child: Text(
                    'Sair',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
