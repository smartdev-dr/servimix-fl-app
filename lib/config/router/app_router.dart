import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:servi_mix/config/router/app_router_notifier.dart';
import 'package:servi_mix/presentation/providers/auth_provider.dart';
import 'package:servi_mix/presentation/screens/screens.dart';

final goRouterProvider = Provider((ref) {
  final goRouterNotifier = ref.read(goRouterNotifierProvider);

  return GoRouter(
      refreshListenable: goRouterNotifier,
      initialLocation: '/loginscreen',
      routes: [
        GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen()),
        GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
        GoRoute(
            path: '/search', builder: (context, state) => const SearchScreen()),
        GoRoute(path: '/chat', builder: (context, state) => const ChatScreen()),
        GoRoute(
            path: '/servicescreen',
            builder: (context, state) => const ServiceScreen()),
        GoRoute(
            path: '/servicescreennext',
            builder: (context, state) => const ServiceScreenNext()),
        GoRoute(
            path: '/loginscreen',
            builder: (context, state) => const LoginScreen()),
        GoRoute(
            path: '/registredscreen',
            builder: (context, state) => const RegistredScreen()),
        GoRoute(
            path: '/paymentscreen',
            builder: (context, state) => const PaymentScreen()),
      ],
      redirect: (context, state) {
        final isGoingTo = state.uri.path;
        final authStatus = goRouterNotifier.authStatus;

        // Si está autenticado y quiere ir al login o registro, lo enviamos a home '/'
        if (authStatus == AuthStatus.authenticated &&
            (isGoingTo == '/loginscreen' || isGoingTo == '/registredscreen')) {
          return '/';
        }

        //NO autenticado y quiere ir a cualquier otra pantalla, lo enviamos al login
        if (authStatus == AuthStatus.noauthenticated &&
            isGoingTo != '/loginscreen' &&
            isGoingTo != '/registredscreen') {
          return '/loginscreen';
        }

        return null;
      });
});
