import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:barcode_app/screens/barcode_screen.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:barcode/barcode.dart';

void main() {
  testWidgets('BarcodeScreen displays barcode and data', (WidgetTester tester) async {
    // Build the BarcodeScreen widget
    await tester.pumpWidget(
      MaterialApp(
        home: const BarcodeScreen(
          title: 'Code 128',
          barcodeType: Barcode.code128(),
          data: '1234567890',
        ),
      ),
    );

    expect(find.text('Code 128'), findsOneWidget);
    expect(find.byType(BarcodeWidget), findsOneWidget);
    expect(find.text('Data: 1234567890'), findsOneWidget);
  });
}