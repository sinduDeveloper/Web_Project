import 'package:flutter/material.dart';

Widget headingText(String text) {
  return Text(
    text,
    style:  TextStyle(color: Colors.indigo.shade300),
  );
}

Widget columnText({
  required String text,
  bool isIcon = false,
  VoidCallback? onIconPressed,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(
            text,
            
          ),
        ),
        isIcon
            ? GestureDetector(
                onTap: onIconPressed, child: const Icon(Icons.arrow_drop_down))
            : const SizedBox.shrink()
      ],
    ),
  );
}
