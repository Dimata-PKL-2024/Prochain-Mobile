// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/theme/theme.dart';

class SalesChartSection extends StatelessWidget {
  const SalesChartSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSm, right: paddingMd), // Adjust padding to shift slightly left
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Aktivitas Penjualan',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600, // Make text semi-bold
                ),
          ),

          const SizedBox(height: 10),

          // Tabs: Bulanan, Mingguan, Harian
          Row(
            children: const [
              _TabButton(label: 'Bulanan', isSelected: true),
              _TabButton(label: 'Mingguan', isSelected: false),
              _TabButton(label: 'Harian', isSelected: false),
            ],
          ),

          const SizedBox(height: 20),

          // Chart Placeholder
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: MaterialTheme.lightScheme().surface,
              borderRadius: borderRadiusMd,
            ),
            child: const Center(
              child: Text('Chart Placeholder'), // Replace with actual chart widget
            ),
          ),

          const SizedBox(height: 10),

          // 'Selengkapnya' Button
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {}, // Add navigation or functionality here
              child: const Text('Selengkapnya'),
            ),
          ),
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const _TabButton({
    Key? key,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? MaterialTheme.lightScheme().primary : Colors.transparent,
          borderRadius: borderRadiusSm,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected
                ? Colors.white
                : MaterialTheme.lightScheme().onSurface.withOpacity(0.6), // Non-active color
          ),
        ),
      ),
    );
  }
}
