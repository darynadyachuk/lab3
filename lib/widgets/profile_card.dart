import 'package:flutter/material.dart';
import '../screens/details_screen.dart';
import 'contact_info.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String profession;
  final String phone;
  final String email;
  final String location;

  const ProfileCard({
    super.key,
    required this.name,
    required this.profession,
    required this.phone,
    required this.email,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProfileDetailsScreen(),
                    ),
                  );
                },
                child: Hero(
                  tag: 'profile-avatar',
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Text(
                name,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                profession,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const ContactInfo(
                      icon: Icons.phone,
                      text: '+380 XX XXX XX XX',
                    ),
                    const ContactInfo(icon: Icons.email, text: 'ваш@email.com'),
                    const ContactInfo(
                      icon: Icons.location_on,
                      text: 'Острог, Україна',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.link),
                    tooltip: 'Website',
                    onPressed: () => debugPrint('Website'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chat),
                    tooltip: 'Telegram',
                    onPressed: () => debugPrint('Telegram'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.photo_camera),
                    tooltip: 'Instagram',
                    onPressed: () => debugPrint('Instagram'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Edit Profile clicked')),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
