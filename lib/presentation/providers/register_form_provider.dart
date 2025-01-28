import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String confirmpassword = '';
  String name = '';
  String lastname = '';

  bool isValidForm() {
    print(formkey.currentState?.validate());
    print('$email,$password');

    return formkey.currentState?.validate() ?? false;
  }
}
