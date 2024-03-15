import 'package:chat_app/features/profile/widgets/profile_section.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Scaffold(
          appBar: AppBar(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/b.jpg'),
              radius: 20,
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: ProfileSection(),
          ),
        ),
      ),
    );
  }
}
