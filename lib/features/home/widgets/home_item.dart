import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.avatar,
    this.showDeleteIcon = false,
  });

  final Widget image;
  final String title;
  final String subtitle;
  final Widget? avatar;
  final bool showDeleteIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey, fontSize: 16),
      ),
      trailing: showDeleteIcon ? const Icon(Icons.delete) : (avatar ?? const SizedBox(width: 10)),
    );
  }
}
