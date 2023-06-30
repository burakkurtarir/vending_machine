import 'package:flutter/material.dart';
import 'package:vending_machine/core/navigations/base_navigation_service.dart';

final class DefaultNavigationService implements BaseNavigationService {
  final BuildContext context;

  DefaultNavigationService(this.context);

  @override
  void pop() {
    Navigator.pop(context);
  }

  @override
  Future<T?> push<T extends Object?>(Widget page) {
    return Navigator.push<T?>(
      context,
      MaterialPageRoute(builder: (ctx) => page),
    );
  }
}
