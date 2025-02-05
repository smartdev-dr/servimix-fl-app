import 'package:dio/dio.dart';
import 'package:servi_mix/auth/domain/domains.dart';
import 'package:servi_mix/config/constants/environment.dart';

class AuthDataSourceImpl extends AuthDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
    ),
  );

  @override
  Future<User> checkAuthStatus(String token) async {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response = await dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      final user = UserMapper.userJsonEntity(response.data);
      return user;
    } catch (e) {
      throw WrongCredentialsError();
    }
  }

  @override
  Future<User> register(String email, String password, String name,
      String lastName, String phone) async {
    try {
      final response = await dio.post('/users', data: {
        'email': email,
        'password': password,
        'name': name,
        'lastname': lastName,
        'phone': phone,
      });
      final user = UserMapper.userJsonEntity(response.data);
      return user;
    } catch (e) {
      throw WrongCredentialsError();
    }
  }
}
