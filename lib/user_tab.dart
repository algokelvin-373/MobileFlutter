import 'package:flutter/material.dart';

import 'model/user.dart';

class UserTab extends StatelessWidget {
  const UserTab({super.key});

  // Sample data for demonstration
  static const List<User> users = [
    User(id: 1, name: 'John Doe', photoUrl: 'https://via.placeholder.com/150'),
    User(id: 2, name: 'Jane Smith', photoUrl: 'https://via.placeholder.com/150'),
    User(id: 3, name: 'Alice Johnson', photoUrl: 'https://via.placeholder.com/150'),
    User(id: 4, name: 'Bob Brown', photoUrl: 'https://via.placeholder.com/150'),
    User(id: 5, name: 'Charlie Adams', photoUrl: 'https://via.placeholder.com/150'),
    User(id: 6, name: 'Eve Parker', photoUrl: 'https://via.placeholder.com/150'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.photoUrl),
              ),
              title: Text(user.name),
              subtitle: Text('User ID: ${user.id}'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on ${user.name}')),
                );
              },
            ),
          );
        }
    );
  }

}