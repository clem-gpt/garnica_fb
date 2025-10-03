import 'package:flutter/material.dart';

class Createpost extends StatelessWidget {
  final VoidCallback? onPostcreated;
  const Createpost({super.key, this.onPostcreated});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPostcreated,
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/profile/jucaban.jpg"),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          border: InputBorder.none
      ),
    ),
    trailing: Icon(Icons.image),
   );
  }
}