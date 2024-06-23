import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yogafit/reservation_page/reservation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'yogafit',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: const ReservationPage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}
