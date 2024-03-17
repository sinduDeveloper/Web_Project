import 'package:flutter/material.dart';
import 'package:interview_project/datas/list_of_datas.dart';
import 'package:interview_project/screens/widgets/forms/customer_form.dart';
import 'package:interview_project/screens/widgets/profile_and_notification_block.dart';
import 'package:interview_project/utils/text_utils.dart';

import '../utils/form_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<Widget> selectedForm = ValueNotifier(const CustomerForm());
  Widget previousForm = const CustomerForm();
  Widget? nextForm = const CustomerForm();

  final Map<String, bool> _expanded = {
    "master": false,
    "invoices": false,
    "estimates": false,
    "income": false,
    "vouchers": false,
    "cash/bank": false,
    "payroll": false,
    "report": false,
    "final ac": false
  };
  bool isCardExpanded = false;
  void _toggleExpansion(String heading) {
    setState(() {
      _expanded.forEach((key, value) {
        if (heading == key) {
          _expanded[heading] = !_expanded[heading]!;
        } else {
          _expanded[key] = false;
        }
      });
    });
  }

  final List<Widget> routeHistory = [CustomerForm()];

  void navigateBack() {
    if (routeHistory.isNotEmpty) {
      selectedForm.value = routeHistory.elementAt(
          routeHistory.indexWhere((element) => element == selectedForm.value) -
              1);
    }
  }

  void navigateForward() {
    selectedForm.value = routeHistory.elementAt(
        routeHistory.indexWhere((element) => element == selectedForm.value) +
            1);
  }

  bool isProfileHovered = false;
  bool isnotificationHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            isCardExpanded
                ? cardWidget()
                : Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: mainHeading
                              .map((e) => GestureDetector(
                                  onTap: () {
                                    _toggleExpansion(e);
                                  },
                                  child: headingText(e.toUpperCase())))
                              .toList(),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: columnHeadings
                                    .map((e) => GestureDetector(
                                          child: columnText(text: e),
                                          onTap: () {
                                            setState(() {
                                              selectedForm.value =
                                                  formsList[e]!;
                                              routeHistory
                                                  .add(selectedForm.value);
                                            });
                                          },
                                        ))
                                    .toList(),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 1.2,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        for (var heading in mainHeading)
                                          _expanded[heading] == true
                                              ? Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 8,
                                                      horizontal: 16),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children:
                                                        topicData[heading]!
                                                            .map(
                                                                (e) => Flexible(
                                                                      child:
                                                                          GestureDetector(
                                                                        child:
                                                                            Card(
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(5.0),
                                                                            child:
                                                                                Text(e),
                                                                          ),
                                                                        ),
                                                                        onTap:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            selectedForm.value =
                                                                                formsList[e]!;
                                                                            routeHistory.add(selectedForm.value);
                                                                          });
                                                                        },
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  ),
                                                )
                                              : const SizedBox(),
                                        cardWidget(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: column2
                                        .map((e) => ExpansionTile(
                                            onExpansionChanged: (value) {},
                                            title: Text(
                                              e,
                                            )))
                                        .toList(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: finalColumn
                                    .map((e) => GestureDetector(
                                            child: columnText(
                                          text: e,
                                        )))
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            const Positioned(
                top: 20, right: 5, child: ProfileAndNotificationBlock())
          ],
        ));
  }

  Widget cardWidget() {
    return ValueListenableBuilder(
      valueListenable: selectedForm,
      builder: (context, value, child) => Card(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                customRoundedCard(
                  IconButton(
                      onPressed: navigateBack,
                      icon: const Icon(Icons.arrow_back)),
                ),
                customRoundedCard(
                  IconButton(
                      onPressed: navigateForward,
                      icon: const Icon(Icons.arrow_forward)),
                ),
                const Spacer(),
                headingText(selectedForm.value.toString()),
                const Spacer(),
                customRoundedCard(IconButton(
                    onPressed: () {
                      setState(() {
                        isCardExpanded = !isCardExpanded;
                      });
                    },
                    icon: Icon(isCardExpanded
                        ? Icons.fullscreen_exit
                        : Icons.fullscreen)))
              ],
            ),
            const Divider(),
            selectedForm.value,
          ],
        ),
      ),
    );
  }
}
