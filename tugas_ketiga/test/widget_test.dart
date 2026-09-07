import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_ketiga/main.dart';

// Import kelas SingleChildExample kamu di sini
// Gantilah 'widget_layout' jika nama proyekmu berbeda

void main() {
  testWidgets('Memastikan SingleChildExample tampil dengan benar', (WidgetTester tester) async {
    // 1. Jalankan widget SingleChildExample di dalam MaterialApp & Scaffold
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LayerStackExample(),
        ),
      ),
    );

    // 2. Cek apakah teks 'Ini Single-child Layout' ada di layar
    expect(find.text('Ini Single-child Layout'), findsOneWidget);
  });
}