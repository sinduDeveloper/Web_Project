import 'package:flutter/material.dart';
import 'package:interview_project/datas/list_of_datas.dart';
import 'package:interview_project/screens/widgets/customer_listing_block.dart';

class CustomerForm extends StatelessWidget {
  const CustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          const Text('Enter Customer Names', style: TextStyle(fontSize: 18.0)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: customerList.values
                .map((e) => Row(
                      children: e
                          .map((e) => Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      labelText: e,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ))
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: "Search",
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const CustomerListingBlock(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
