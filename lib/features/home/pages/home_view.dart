import 'package:flutter/material.dart';
import 'package:chat_app/features/home/widgets/home_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Message",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 16),
        children: [
          HomeList(),
        ],
      ),
    );
  }
}
