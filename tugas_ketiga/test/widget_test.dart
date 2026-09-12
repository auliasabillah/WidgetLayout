import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_ketiga/main.dart';

void main() {
  testWidgets('Memastikan SingleChildExample tampil dengan benar', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Beranda(),
        ),
      ),
    );

    // 2. Cek apakah teks 'Ini Single-child Layout' ada di layar
    expect(find.text('Ini Single-child Layout'), findsOneWidget);
  });
}