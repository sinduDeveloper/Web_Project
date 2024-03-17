import 'package:flutter/material.dart';

class SupplierForm extends StatelessWidget {
  const SupplierForm({super.key});

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
            decoration: InputDecoration(labelText: 'Contact Information'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Address'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
