import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final VoidCallback? onPostCreated;

  const CreatePost({super.key, this.onPostCreated});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPostCreated,
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/profile/jucaban.jpg"),
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          border: InputBorder.none,
        ),
      ),
      trailing: const Icon(Icons.image),
    );
  }
}
