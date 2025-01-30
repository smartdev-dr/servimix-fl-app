import 'package:servi_mix/auth/domain/domains.dart';

class UserMapper {
  static User userJsonEntity(Map<String, dynamic> json) => User(
        token: json['access_token'],
      );
}
