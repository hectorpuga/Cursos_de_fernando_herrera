import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  String email = '';
  String password = '';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;

    notifyListeners();
  }

  bool isValiForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
