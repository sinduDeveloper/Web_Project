import 'package:flutter/material.dart';

class LedgerForm extends StatelessWidget {
  const LedgerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: const InputDecoration(labelText: 'Ledger Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Ledger Type'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Opening Balance'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Description'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Account Code'),
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
