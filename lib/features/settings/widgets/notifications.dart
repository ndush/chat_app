import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            "New Post",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "if any new post update",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: true,
            activeColor: Colors.white,
            activeTrackColor: Colors.green.shade900,
            onChanged: (bool value) {},
          ),
        ),
        ListTile(
          title: const Text(
            "Got Hired",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "if you get hired any company",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: true,
            activeColor: Colors.white,
            activeTrackColor: Colors.green.shade900,
            onChanged: (bool value) {},
          ),
        ),
        ListTile(
          title: const Text(
            "Get Rejected",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "if you rejected by any company",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: false,
            inactiveTrackColor: Colors.grey.shade300,
            inactiveThumbColor: Colors.white,
            onChanged: (bool value) {},
          ),
        ),
        ListTile(
          title: const Text(
            "Message",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Got any new message",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: false,
            inactiveTrackColor: Colors.grey.shade300,
            inactiveThumbColor: Colors.white,
            onChanged: (bool value) {},
          ),
        ),
        ListTile(
          title: const Text(
            "Call",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Have a call",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: false,
            inactiveTrackColor: Colors.grey.shade300,
            inactiveThumbColor: Colors.white,
            onChanged: (bool value) {},
          ),
        ),
        ListTile(
          title: const Text(
            "Dark Mode",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Enable dark theme",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: false,
            inactiveTrackColor: Colors.grey.shade300,
            inactiveThumbColor: Colors.white,
            onChanged: (bool value) {},
          ),
        ),
      ],
    );
  }
}
