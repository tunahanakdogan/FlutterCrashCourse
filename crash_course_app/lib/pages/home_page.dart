import 'package:crash_course_app/classes/item_class.dart';
import 'package:crash_course_app/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
                box: ItemClass(
                    title: "Rocket",
                    path: "rocket.png",
                    description: "Rocket Description")),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: "Space",
                        path: "space.png",
                        description: "Space description"),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: "Travel",
                        path: "travel.png",
                        description: "Travel description"),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                  title: "Yeah",
                  path: "yeah.png",
                  description: "Yeah description"),
            )
          ],
        ),
      ),
    );
  }
}
