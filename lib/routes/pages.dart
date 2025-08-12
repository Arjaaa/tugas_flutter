import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1/pages/CalculatorPage.dart';
import 'package:latihan1/pages/football_players.dart';
import 'package:latihan1/pages/football_edit_page.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.calculator,
      page: () => CalculatorPage(hasil: ""),
    ),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(
      name: AppRoutes.footballeditplayers,
      page: () => FootballEditPage(),
    ),
  ];
}
