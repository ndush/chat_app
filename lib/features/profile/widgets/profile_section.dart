
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main title
        Text(
          'Adom Shafi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        // Subtitle
        Text(
          'hellobesnik@gmail.com',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ),
          title: Text('Edit Profile'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.punch_clock_rounded,
              color: Colors.white,
            ),
          ),
          title: Text('Application'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          title: Text('Notification Settings'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.pink,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
            ),
          ),
          title: Text('Share App'),
        ),
        SizedBox(height: 80),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
          ),
          title: Text('Logout'),
        ),
      ],
    );
  }
}
