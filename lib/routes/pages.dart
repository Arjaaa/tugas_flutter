import 'package:get/get.dart';
import 'package:latihan1/pages/CalculatorPage.dart';
import 'package:latihan1/pages/football_players.dart';
import 'package:latihan1/pages/football_edit_page.dart';
import 'package:latihan1/pages/profile_page.dart';
import 'package:latihan1/home_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(
      name: AppRoutes.footballeditplayers,
      page: () => FootballEditPage(),
    ),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
  ];
}
