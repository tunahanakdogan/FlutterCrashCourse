import 'package:crash_course_app/pages/description_page.dart';
import 'package:flutter/material.dart';

import '../classes/item_class.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DescriptionPage(
              box: ItemClass(
                title: box.title,
                path: box.path,
                description: box.description,
              ),
            ),
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              Image.asset("images/${box.path}"),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(box.description),
            ],
          ),
        ),
      ),
    );
  }
}
