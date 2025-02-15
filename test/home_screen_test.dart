import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:barcode_app/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen displays bottom navigation and barcodes', (WidgetTester tester) async {

    await tester.pumpWidget(
      MaterialApp(
        home: const HomeScreen(),
      ),
    );

    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Code 128'), findsOneWidget);
    expect(find.text('EAN-13'), findsOneWidget);
    expect(find.text('EAN-8'), findsOneWidget);
    expect(find.text('QR Code'), findsOneWidget);

    await tester.tap(find.text('EAN-13'));
    await tester.pumpAndSettle();

    expect(find.text('EAN-13'), findsOneWidget);
  });
}