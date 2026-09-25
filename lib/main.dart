import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:last_minutes_deal/core/Routing/app_pages.dart';
import 'package:last_minutes_deal/core/Routing/app_routes.dart';
import 'package:last_minutes_deal/deals/presentation/views/deal_home_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.home,
    );
  }
}