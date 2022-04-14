import 'package:get/get.dart';

import '../controllers/page_register_controller.dart';

class PageRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageRegisterController>(
      () => PageRegisterController(),
    );
  }
}
