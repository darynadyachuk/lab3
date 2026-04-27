import 'package:flutter/material.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Details')),
      body: Center(
        child: Hero(
          tag: 'profile-avatar',
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: const Icon(Icons.person, size: 100, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
