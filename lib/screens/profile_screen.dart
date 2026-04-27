import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: const ProfileCard(
              name: 'Daryna Diachuk',
              profession: 'Flutter Developer',
              phone: '+380 XX XXX XX XX',
              email: 'ваш@email.com',
              location: 'Острог, Україна',
            ),
          ),
        ),
      ),
    );
  }
}
