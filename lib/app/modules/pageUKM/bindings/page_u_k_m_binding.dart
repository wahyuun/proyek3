import 'package:get/get.dart';

import '../controllers/page_u_k_m_controller.dart';

class PageUKMBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageUKMController>(
      () => PageUKMController(),
    );
  }
}
