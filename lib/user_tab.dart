import 'package:flutter/material.dart';

class UserTab extends StatelessWidget {
  const UserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Home Tab',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

}