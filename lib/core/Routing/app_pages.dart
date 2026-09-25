import 'package:get/get.dart';
import 'package:last_minutes_deal/core/Routing/app_routes.dart';
import 'package:last_minutes_deal/deals/presentation/bindings/deal_home_binding.dart';
import 'package:last_minutes_deal/deals/presentation/views/deal_home_view.dart';

class AppPages {
  static List<GetPage> pages=[
    GetPage(name: AppRoutes.home, page: ()=> DealHomeView(),binding: DealHomeBinding()),
  ];
}