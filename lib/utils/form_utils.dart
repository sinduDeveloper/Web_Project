import 'package:flutter/material.dart';

showProfileMenus(BuildContext context) async {
  await showMenu(
    context: context,
    position: const RelativeRect.fromLTRB(100, 30, 20, 100),
    items: [
      PopupMenuItem(
        child: personalBlockFull(),
      ),
    ],
  );
}

showNotificationMenus(BuildContext context) async {
  await showMenu(
    context: context,
    position: const RelativeRect.fromLTRB(100, 40, 30, 100),
    items: [
      for (int i = 0; i < 10; i++)
        PopupMenuItem(
          child: notificationRow("Hello $i"),
        ),
    ],
  );
}

notificationRow(String text) {
  return Row(
    children: [const Icon(Icons.notification_important), Text(text)],
  );
}

Widget personalNameBlock() {
  return const Row(
    children: [
      CircleAvatar(
        child: Icon(Icons.person),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [Text("Person Name"), Text("person_mail@gmail.com")],
        ),
      )
    ],
  );
}

Widget profileMenusBlock(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Text(text)
      ],
    ),
  );
}

personalBlockFull() {
  return Card(
    elevation: 0,
    margin: const EdgeInsets.all(5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          personalNameBlock(),
          const Divider(),
          profileMenusBlock(Icons.settings, "Settings"),
          profileMenusBlock(Icons.money_sharp, "Payment Subscription"),
          profileMenusBlock(Icons.password, "Change Password"),
          const Divider(),
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Logout"))),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    ),
  );
}

customRoundedCard(Widget child,{ Color color= Colors.white}) {
  return Card(
    color: color,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    child: child,
  );
}
