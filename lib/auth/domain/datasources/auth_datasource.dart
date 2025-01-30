import 'package:servi_mix/auth/domain/domains.dart';

abstract class AuthDataSource {
  Future<User> login(String email, String password);
  Future<User> register(String email, String password, String name,
      String lastName, String phone);
  Future<User> checkAuthStatus(String token);
}
