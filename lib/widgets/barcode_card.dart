import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class BarcodeCard extends StatelessWidget {
  final Barcode barcodeType;
  final String data;

  const BarcodeCard({super.key, required this.barcodeType, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.blue.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: BarcodeWidget(
          barcode: barcodeType,
          data: data,
          width: 250,
          height: 100,
          drawText: true,
        ),
      ),
    );
  }
}