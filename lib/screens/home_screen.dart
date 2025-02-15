import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import 'barcode_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _screens = [
    BarcodeScreen(title: 'Code 128', barcodeType: Barcode.code128(), data: '1234567890'),
    BarcodeScreen(title: 'EAN-13', barcodeType: Barcode.ean13(), data: '5901234123457'),
    BarcodeScreen(title: 'EAN-8', barcodeType: Barcode.ean8(), data: '96385074'),
    BarcodeScreen(title: 'QR Code', barcodeType: Barcode.qrCode(), data: 'https://github.com/jonasermert'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.barcode_reader), label: 'Code 128'),
          NavigationDestination(icon: Icon(Icons.view_list), label: 'EAN-13'),
          NavigationDestination(icon: Icon(Icons.view_list_outlined), label: 'EAN-8'),
          NavigationDestination(icon: Icon(Icons.qr_code), label: 'QR Code'),
        ],
        indicatorColor: Colors.blue.shade100,
        backgroundColor: Colors.white,
      ),
    );
  }
}