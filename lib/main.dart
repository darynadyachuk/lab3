import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // TODO: Створіть theme з seedColor Colors.blue

        // Підказка: ColorScheme.fromSeed(seedColor: ...)

        // useMaterial3: true
      ),

      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TODO: Додайте title 'My Profile'

        // TODO: Додайте backgroundColor з Theme.of(context).colorScheme.inversePrimary
      ),

      body: const Center(child: Text('Profile Card буде тут')),
    );
  }
}
