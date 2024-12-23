import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Mis widgets
import 'package:list_cards/screens/home_screen.dart';
import 'package:list_cards/states/contactstate.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContactState()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lista de contactos',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
