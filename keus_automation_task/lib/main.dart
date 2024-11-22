import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keus_automation_task/presentation/screens/home/home_page.dart';
import 'injection.dart';
import 'presentation/screens/product/bloc/product_bloc.dart';

void main() {
  configureDependencies();
  runApp(BlocProvider(
    create: (context) => getIt<ProductBloc>(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KeusApp(),
    ),
  ));
}

class KeusApp extends StatelessWidget {
  const KeusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
