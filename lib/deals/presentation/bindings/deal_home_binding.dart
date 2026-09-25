import 'package:get/get.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';

class DealHomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>DealHomeController());
  }
}