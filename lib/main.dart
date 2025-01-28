import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servi_mix/config/theme/app_theme.dart';
import 'package:servi_mix/config/router/app_router.dart';
import 'package:servi_mix/services/auth_service_login.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthLoginService())],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme(selectedColor: 1).getTheme(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
