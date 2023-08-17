import 'package:flutter/material.dart';

class DasboardView extends StatelessWidget {
  const DasboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("appbar"),
      ),
      body: Center(
        child: Container(
          child: const Text("DAshboard"),
        ),
      ),
    );
  }
}
