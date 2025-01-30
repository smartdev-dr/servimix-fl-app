import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:servi_mix/config/constants/environment.dart';
import 'package:servi_mix/config/theme/app_theme.dart';
import 'package:servi_mix/config/router/app_router.dart';

void main() async {
  await Environment.initEnvironment();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
