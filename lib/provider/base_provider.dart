import 'package:flutter/material.dart';

class BaseProvider extends ChangeNotifier {
  String? errorMessage;

  void setErrorMessage(String message) {
    errorMessage = message;
    notifyListeners();
  }
}
