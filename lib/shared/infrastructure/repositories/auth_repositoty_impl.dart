import 'package:servi_mix/auth/domain/domains.dart';
import 'package:servi_mix/shared/infrastructure/datasources/auth_datasource_impl.dart';

class AuthRepositotyImpl extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositotyImpl({AuthDataSource? dataSource})
      : dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<User> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<User> register(String email, String password, String name,
      String lastName, String phone) {
    return dataSource.register(email, password, name, lastName, phone);
  }
}
