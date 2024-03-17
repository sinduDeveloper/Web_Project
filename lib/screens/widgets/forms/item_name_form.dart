import 'package:flutter/material.dart';

class ItemNameForm extends StatelessWidget {
  const ItemNameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Item Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Item Information'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Reg No'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
