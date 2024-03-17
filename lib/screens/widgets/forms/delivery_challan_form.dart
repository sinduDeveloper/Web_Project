import 'package:flutter/material.dart';

class DeliveryChallanForm extends StatelessWidget {
  const DeliveryChallanForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Customer Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Challan Number'),
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
