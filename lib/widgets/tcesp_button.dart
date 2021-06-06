import 'package:flutter/material.dart';

class TcespButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/icon_tcesp.png'),
            fit: BoxFit.fill,
          ),
          border: Border.all(
            color: Colors.grey[200],
            width: 4,
          ),
          shape: BoxShape.circle,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(75),
          onTap: null,
        ),
      ),
    );
  }
}
