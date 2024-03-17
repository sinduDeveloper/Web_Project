import 'package:flutter/material.dart';

class SalesInvoiceForm extends StatelessWidget {
  const SalesInvoiceForm({super.key});

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
            decoration: InputDecoration(labelText: 'Invoice Number'),
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
