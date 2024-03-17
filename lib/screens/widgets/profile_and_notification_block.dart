import 'package:flutter/material.dart';

import '../../utils/form_utils.dart';

class ProfileAndNotificationBlock extends StatelessWidget {
  const ProfileAndNotificationBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onEnter: (event) => showProfileMenus(context),
          onExit: (event) => null,
          child: customRoundedCard(
              color: Colors.grey.shade300,
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person,
                  size: 25,
                ),
              )),
        ),
        const SizedBox(
          height: 5,
        ),
        MouseRegion(
          onHover: (event) => showNotificationMenus(context),
          child: customRoundedCard(
              color: Colors.grey.shade300,
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.notification_important,
                  size: 25,
                ),
              )),
        )
      ],
    );
  }
}
