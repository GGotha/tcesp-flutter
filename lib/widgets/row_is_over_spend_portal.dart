import 'package:flutter/material.dart';

class RowIsOverSpendPortal extends StatelessWidget {
  final bool isOverSpend;

  const RowIsOverSpendPortal({Key key, this.isOverSpend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isOverSpend
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.monetization_on,
                color: Colors.red,
              ),
              SizedBox(width: 5),
              Text(
                'Os gastos desta prefeitura excederam o teto limite',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.monetization_on,
                color: Colors.green,
              ),
              SizedBox(width: 5),
              Flexible(
                child: Text(
                  'Os gastos desta prefeitura ainda não excederam o teto limite',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          );
  }
}
