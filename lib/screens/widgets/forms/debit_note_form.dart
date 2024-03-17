import 'package:flutter/material.dart';

class DebitNoteForm extends StatelessWidget {
  const DebitNoteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Supplier Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Note Number'),
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
