import 'dart:developer';

import 'package:colorize/colorize.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> go(String routeName,
      {Object? arguments, bool replacement = false}) {
    printRoute(routeName);
    return !replacement
        ? Navigator.pushNamed(this, routeName, arguments: arguments)
        : Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  } //   context.navigateTo('/second');

  Future<void> goUntil(String routeName, {Object? arguments}) {
    printRoute(routeName);
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }

  void pop({dynamic value}) {
    return Navigator.pop(this, value);
  }
}

printRoute(String routeName) {
  var route = Colorize(routeName);
  route.apply(Styles.GREEN);
  log("Go to $route");
}
