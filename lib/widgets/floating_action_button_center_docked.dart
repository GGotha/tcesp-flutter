import 'dart:math';

import 'package:flutter/material.dart';

class FloatingActionButtonCenterDocked extends FloatingActionButtonLocation {
  final double height;

  const FloatingActionButtonCenterDocked(this.height);

  @protected
  double getDockedY(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    double fabY = height * 0.93 - fabHeight / 2.0;
    // The FAB should sit with a margin between it and the snack bar.

    final double maxFabY = scaffoldGeometry.scaffoldSize.height - fabHeight;
    return min(maxFabY, fabY);
  }

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Compute the x-axis offset.
    final double fabX = (scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width) /
        2.0;

    return Offset(fabX, getDockedY(scaffoldGeometry));
  }
}
