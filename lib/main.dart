import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testone/di/injection.dart' as di;
import 'package:testone/presentation/bloc/home_cubit.dart';
import 'package:testone/presentation/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.setupLocator();
  runApp(const MyApp());
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
      home: BlocProvider(
        create: (context) => di.locator<HomeCubit>(),
        child: const HomeScreen(),
      ),
    );
  }
}
