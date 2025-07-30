import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testone/di/injection.dart' as di;
import 'package:testone/presentation/home_provider.dart';
import 'package:testone/presentation/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.setupLocator();
  runApp(
    ChangeNotifierProvider(
      create: (_) => di.locator<HomeProvider>(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foods',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomeScreen(),
    );
  }
}
