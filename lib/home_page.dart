import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/pages/CalculatorPage.dart';
import 'package:latihan1/pages/football_players.dart';
import 'package:latihan1/pages/profile_page.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    final pages = [
      CalculatorPage(), // sekarang bisa dipanggil tanpa hasil
      FootballPage(),
      ProfilePage(),
    ];

    return Obx(
      () => Scaffold(
        body: pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.currentIndex.value = index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: "Football",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
