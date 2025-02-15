import 'package:barcode_app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BarcodeApp());
}

class BarcodeApp extends StatelessWidget {
  const BarcodeApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barcode App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    home: const HomeScreen(),
    );
  }
}