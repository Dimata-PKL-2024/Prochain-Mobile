import 'package:flutter/material.dart';
import 'package:prochain/presentation/module/home/widget/info_section.dart';
import 'package:prochain/presentation/module/home/widget/sales_chart_section.dart';
import 'package:prochain/presentation/module/home/widget/welcome_section.dart';
import 'package:prochain/presentation/module/home/widget/bottom_nav_bar.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mendapatkan username dari GetStorage
    final storage = GetStorage();
    final String username = storage.read('username') ?? 'Guest';

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              child: WelcomeSection(
                username: username, // Menggunakan username dinamis dari GetStorage
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              child: const SizedBox(height: 20),
            ),
            ResponsiveGridCol(
              xs: 12,
              child: const SalesChartSection(),
            ),
            ResponsiveGridCol(
              xs: 12,
              child: const SizedBox(height: 20),
            ),
            ResponsiveGridCol(
              xs: 12,
              child: Column(
                children: const [
                  InfoSection(
                    label: 'Project',
                    value: '60',
                    icon: Icons.folder,
                    iconColor: Colors.green,
                  ),
                  SizedBox(height: 10),
                  InfoSection(
                    label: 'Produksi',
                    value: '234',
                    icon: Icons.build,
                    iconColor: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  InfoSection(
                    label: 'Stock',
                    value: '43',
                    icon: Icons.storage,
                    iconColor: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}
