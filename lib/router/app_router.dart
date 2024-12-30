import 'package:go_router/go_router.dart';
import 'package:servi_mix/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/profile', builder: (context, state) => const ProfileScreen()),
  GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
  GoRoute(path: '/search', builder: (context, state) => const SearchScreen()),
  GoRoute(path: '/chat', builder: (context, state) => const ChatScreen()),
]);
