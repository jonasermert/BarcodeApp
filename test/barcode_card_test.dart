import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:barcode_app/widgets/barcode_card.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() {
  testWidgets('BarcodeCard widget displays barcode and data', (WidgetTester tester) async {
    // Build the BarcodeCard widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BarcodeCard(
            barcodeType: Barcode.qrCode(),
            data: 'https://example.com',
          ),
        ),
      ),
    );

    // Verify that the BarcodeCard widget is present
    expect(find.byType(BarcodeCard), findsOneWidget);

    // Verify that the barcode is rendered
    expect(find.byType(BarcodeWidget), findsOneWidget);

    // Verify that the data is displayed
    expect(find.text('Data: https://github.com/jonasermert'), findsOneWidget);
  });
}