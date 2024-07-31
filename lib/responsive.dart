import 'package:flutter/material.dart';

bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < 740;
}

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1200;
}

bool isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= 740 &&
      MediaQuery.of(context).size.width <= 1200;
}
