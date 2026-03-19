import 'package:astra_property/pages/detail_prop.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PlusJakartaSans'),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/property/:propId',
        builder: (context, state) {
          final propId = state.pathParameters['propId']!;
          return DetailProp(propertyId: propId);
        },
      ),
    ],
  );
}
