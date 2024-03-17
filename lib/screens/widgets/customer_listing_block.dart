import 'package:flutter/material.dart';

class CustomerListingBlock extends StatelessWidget {
  const CustomerListingBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customerDetailsRow(
            "Customer Name", "Customer Business Type", "Email", "Phone"),
        const Divider(),
        customerDetailsRow("Hello World ", "Customer Business Name",
            "test@gmail.com", "1122334455"),
        const Divider(),
        customerDetailsRow("Hello", "Customer Business name2",
            "test2@gmail.com", "1122334455"),
        const Divider(),
        customerDetailsRow("Hello", "Customer Business name2",
            "test2@gmail.com", "1122334455"),
        const Divider(),
        customerDetailsRow("Hello", "Customer Business name2",
            "test2@gmail.com", "1122334455"),
      ],
    );
  }
}

customerDetailsRow(String text1, String text2, String text3, String text4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        width: 30,
      ),
      const Icon(Icons.edit_square),
      const SizedBox(
        width: 50,
      ),
      Expanded(child: Text(text1)),
      Expanded(flex: 2, child: Text(text2)),
      Expanded(child: Text(text3)),
      Expanded(child: Text(text4))
    ],
  );
}
