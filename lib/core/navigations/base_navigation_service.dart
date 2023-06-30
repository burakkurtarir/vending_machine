import 'package:flutter/material.dart';

interface class BaseNavigationService {
  Future<T?> push<T extends Object?>(Widget page) async {
    return null;
  }

  void pop() {}
}
