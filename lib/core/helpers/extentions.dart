import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<T?> push<T>(Widget page) {
    return Navigator.push<T>(this, MaterialPageRoute(builder: (_) => page));
  }

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.pushNamed<T>(this, routeName, arguments: arguments);
  }

  Future<T?> pushReplacement<T, TO>(Widget page) {
    return Navigator.pushReplacement<T, TO>(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  Future<T?> pushAndRemoveUntil<T>(Widget page, {RoutePredicate? predicate}) {
    return Navigator.pushAndRemoveUntil<T>(
      this,
      MaterialPageRoute(builder: (_) => page),
      predicate ?? (route) => false,
    );
  }

  void pop<T>([T? result]) {
    Navigator.pop<T>(this, result);
  }
}
