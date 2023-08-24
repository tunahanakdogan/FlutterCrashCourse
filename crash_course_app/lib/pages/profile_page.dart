import 'package:crash_course_app/core/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDark.value = !isDark.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
      body: const Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("images/yeah.png"),
              radius: 100,
            ),
          ),
          SizedBox(height: 40),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name"),
            subtitle: Text("test test"),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text("E-Mail"),
            subtitle: Text("testn@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text("Website"),
            subtitle: Text("test.me"),
          ),
        ],
      ),
    );
  }
}
