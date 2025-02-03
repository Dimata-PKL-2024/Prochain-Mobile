// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prochain/core/style/style.dart';

class DashboardHeader extends StatelessWidget {
  final String profileImagePath;
  final VoidCallback onNotificationTap;

  const DashboardHeader({
    Key? key,
    required this.profileImagePath,
    required this.onNotificationTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingMd),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.titleLarge,
          ),

          // Notification and Profile Picture
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: onNotificationTap,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/icon/icon-profile.png'),
                radius: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
