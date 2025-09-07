import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String reference;

  const SuccessScreen({required this.reference, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Success')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Purchase Successful!', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            Text('Reference: $reference'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}