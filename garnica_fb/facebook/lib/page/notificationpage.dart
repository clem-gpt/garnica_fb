import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                _buildNotificationItem(
                  imagePath: 'assets/user1.png',
                  title: 'Clem liked your post',
                  subtitle: '2 hours ago',
                ),
                _buildNotificationItem(
                  imagePath: 'assets/user2.png',
                  title: 'Reich commented on your photo',
                  subtitle: 'Yesterday',
                ),
                _buildNotificationItem(
                  imagePath: 'assets/user3.png',
                  title: 'Mark sent you a message',
                  subtitle: 'Just now',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 25,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
