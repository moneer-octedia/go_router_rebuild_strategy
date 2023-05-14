import 'package:flutter/material.dart';
import 'package:go_router_rebuild_strategy/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final routerConfig = buildRouter(GlobalKey<NavigatorState>());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: routerConfig,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}