import 'package:crash_course_app/classes/item_class.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSize = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset("images/${widget.box.path}"),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Wrap(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSize = fontSize + 50;
                      });
                    },
                    child: const Text("Get Bigger"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSize = fontSize - 50;
                      });
                    },
                    child: const Text("Get Smaller"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
