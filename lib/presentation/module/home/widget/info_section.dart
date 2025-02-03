// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/theme/theme.dart';

class InfoSection extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color iconColor;

  const InfoSection({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingMd, vertical: paddingSm),
      decoration: BoxDecoration(
        color: MaterialTheme.lightScheme().surface,
        borderRadius: borderRadiusMd,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icon
              Container(
                padding: EdgeInsets.all(paddingXs),
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 24,
                ),
              ),

              const SizedBox(width: 10),

              // Label
              Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),

          // Value
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: MaterialTheme.lightScheme().primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
