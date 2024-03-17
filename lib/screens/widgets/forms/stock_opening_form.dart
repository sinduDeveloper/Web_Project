import 'package:flutter/material.dart';

class StockOpeningForm extends StatelessWidget {
  const StockOpeningForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Item Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Opening Stock Quantity'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Opening Stock Value'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Submit'))
        ]));
  }
}
