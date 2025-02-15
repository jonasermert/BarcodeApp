import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/barcode_card.dart';


class BarcodeScreen extends StatelessWidget {
  final String title;
  final Barcode barcodeType;
  final String data;

  const BarcodeScreen({
    required this.title,
    required this.barcodeType,
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue.shade600,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue.shade800),
              ),
              const SizedBox(height: 20),
              BarcodeCard(barcodeType: barcodeType, data: data), // Barcode-Card Widget verwenden
              const SizedBox(height: 20),
              Text(
                'Data: $data',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}