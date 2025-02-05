import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:servi_mix/auth/domain/domains.dart';
import 'package:servi_mix/shared/infrastructure/repositories/auth_repositoty_impl.dart';
import 'package:servi_mix/shared/infrastructure/services/key_value_storage_impl.dart';
import 'package:servi_mix/shared/infrastructure/services/key_value_storage_service.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = AuthRepositotyImpl();
  final keyValueStorageService = KeyValueStorageImpl();

  return AuthNotifier(
      authRepository: authRepository,
      keyValueStorageService: keyValueStorageService);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;
  final KeyValueStorageService keyValueStorageService;

  AuthNotifier({
    required this.authRepository,
    required this.keyValueStorageService,
  }) : super(AuthState()) {
    checkAuthStatus();
  }

  Future<void> loginUser(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      final user = await authRepository.login(email, password);
      _setLoggedInUser(user);
    } on WrongCredentialsError {
      logout('Credenciales incorrectas');
    } catch (e) {
      logout('Error desconocido');
    }
  }

  void registerUser(String email, String password, String name, String lastname,
      String phone) async {
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      final user =
          await authRepository.register(email, password, name, lastname, phone);
      _setLoggedInUser(user);
    } on WrongCredentialsError {
      logout('Email ya en uso');
    } catch (e) {
      logout('Error desconocido');
    }
  }

  void checkAuthStatus() async {}

  void _setLoggedInUser(User user) async {
    await keyValueStorageService.setKeyValue('token', user.token);

    state = state.copyWith(
      user: user,
      authStatus: AuthStatus.authenticated,
    );
  }

  Future<void> logout([String? errorMesagge]) async {
    await keyValueStorageService.removeKey('token');
    state = state.copyWith(
        user: null,
        authStatus: AuthStatus.noauthenticated,
        errorMessage: errorMesagge);
  }
}

enum AuthStatus { checking, authenticated, noauthenticated }

class AuthState {
  final AuthStatus authStatus;
  final User? user;
  final String errorMessage;

  AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.errorMessage = ''});

  AuthState copyWith({
    AuthStatus? authStatus,
    User? user,
    String? errorMessage,
  }) =>
      AuthState(
        authStatus: authStatus ?? this.authStatus,
        user: user ?? this.user,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}
