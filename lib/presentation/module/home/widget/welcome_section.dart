// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/theme/theme.dart';

class WelcomeSection extends StatelessWidget {
  final String username;

  const WelcomeSection({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingMd),
      decoration: BoxDecoration(
        color: MaterialTheme.lightScheme().primaryContainer,
        borderRadius: borderRadiusMd,
      ),
      child: Row(
        children: [
          // Text and Info Section
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome Text
                Text(
                  'Hey $username,\nSelamat Datang!',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),

                // Project and Production Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _InfoTile(
                      label: 'Project',
                      value: '60',
                      icon: Icons.folder,
                    ),
                    _InfoTile(
                      label: 'Produksi',
                      value: '23',
                      icon: Icons.settings,
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          // Illustration Image
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/message/admin-dashboard.png',
              fit: BoxFit.contain,
              height: 150, // Adjusted size
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _InfoTile({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: MaterialTheme.lightScheme().primary,
              size: 16, // Aligned size with text
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
