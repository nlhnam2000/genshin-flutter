import 'package:flutter/material.dart';

class BaseProvider extends ChangeNotifier {
  String? errorMessage;
  bool isDisposed = false;

  void setErrorMessage(String message) {
    errorMessage = message;
    notifyListeners();
  }

  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!isDisposed) {
      super.notifyListeners();
    }
  }
}
