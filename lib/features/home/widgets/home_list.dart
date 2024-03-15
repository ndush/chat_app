import 'package:flutter/material.dart';
import 'package:chat_app/features/home/widgets/home_item.dart';

class HomeList extends StatelessWidget {
  HomeList({super.key});

  final List<HomeItem> _homeItems = [
    const HomeItem(
      title: "Rozanne Barrientes",
      subtitle: "A wonderful serenity has taken...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/a-min.jpg'),
      ),
      avatar: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.green,
        child: Text(
          '2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    ),
    const HomeItem(
      title: "Anaya Sanji",
      subtitle: "What about Paypal...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/b-min.jpg'),
      ),
      avatar: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.green,
        child: Text(
          '1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    ),
    const HomeItem(
      title: "Elizabeth Olsen",
      subtitle: "We should move forward to talk with...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/c-min.jpg'),
      ),
    ),
    const HomeItem(
      title: "Tony Stark",
      subtitle: "Lets have a call for a future projects...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/d-min.jpg'),
      ),
    ),
    const HomeItem(
      title: "Banner",
      subtitle: "I dont think i can fit on this ui we should...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/e-min.jpg'),
      ),
    ),
    const HomeItem(
      title: "Steave",
      subtitle: "Move in some special work...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/f-min.jpg'),
      ),
    ),
    const HomeItem(
      title: "Thor",
      subtitle: "You should be a avenger i thing the...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/g-min.jpg'),
      ),
    ),
    const HomeItem(
      title: "Natasha",
      subtitle: "I am going to die in avengers endgame...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/h-min.jpg'),
      ),
    ),
    const HomeItem(
      title: "Hak Eye",
      subtitle: "I have to save natasha in endgame...",
      image: CircleAvatar(
        backgroundImage: AssetImage('assets/images/i-min.jpg'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + kBottomNavigationBarHeight),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: _homeItems,
        ),
      ),
    );
  }
}