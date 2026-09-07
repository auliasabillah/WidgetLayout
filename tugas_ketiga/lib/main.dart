import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: LayerStackExample(),
      ),
    ),
  );
}

class LayerStackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 300, height: 250, color: Colors.blue[100]),
          Container(width: 150, height: 150, color: Colors.blue[400]),
          const Text(
            'Lapisan Paling Atas',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}