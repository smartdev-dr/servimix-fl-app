import 'package:flutter/material.dart';

import 'package:servi_mix/services/api_base_service.dart';

class AuthLoginService extends ChangeNotifier {
  final ApiBaseService apiBaseService = ApiBaseService();

  Future<String?> loginUser(String email, String password) async {
    try {
      final response = await apiBaseService.dio
          .post('/auth/login', data: {email: email, password: password});
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
