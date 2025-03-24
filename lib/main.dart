import 'package:flutter/material.dart';
import 'package:medicalh_ealth/feature/doctors/providers/favorites_provider.dart';
import 'package:medicalh_ealth/feature/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medical Health',
        home: Home(),
      ),
    );
  }
}