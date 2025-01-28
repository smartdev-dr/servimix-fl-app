import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthLoginService extends ChangeNotifier {
  final String _baseUrl = 'https://servimix-backend-production.up.railway.app';
  final String _servimixToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE3MzgwNjg5ODgsImV4cCI6MTczODA2OTA0OH0.IlKlVShjvTSgkoJwwz21F22Cc0dcSPBaMRsqaj94yTQ';

  Future<String?> loginUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };
    final url = Uri.https(_baseUrl, '/api/auth/login', {'key': _servimixToken});
    final resp = await http.post(url, body: json.encode(authData));

    final Map<String, dynamic> decodedResp = json.decode(resp.body);
    print(decodedResp);
  }
}
