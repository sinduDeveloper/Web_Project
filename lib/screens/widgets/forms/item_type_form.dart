import 'package:flutter/material.dart';

class ItemTypeForm extends StatelessWidget {
  const ItemTypeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Item Type Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Description'),
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
