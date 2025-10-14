import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('img/smkypc.png'),
            ),
            const SizedBox(height: 30),

            // Username
            const InfoItem(
              icon: Icons.person,
              label: "Username",
              value: "Hendi Rahmatullo",
            ),

            const SizedBox(height: 10),

            // Call
            const InfoItem(
              icon: Icons.call,
              label: "Call",
              value: "+62 812-3456-7890",
            ),

            const SizedBox(height: 10),

            // Location
            const InfoItem(
              icon: Icons.location_on,
              label: "Location",
              value: "Cihideung, West Java",
            ),

            const SizedBox(height: 10),

            // Search
            const InfoItem(
              icon: Icons.search,
              label: "Search",
              value: "Find nearby contacts",
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.teal),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(value),
            ],
          ),
        ),
      ],
    );
  }
}