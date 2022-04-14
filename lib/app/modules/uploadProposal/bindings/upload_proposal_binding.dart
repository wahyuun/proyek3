import 'package:get/get.dart';

import '../controllers/upload_proposal_controller.dart';

class UploadProposalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UploadProposalController>(
      () => UploadProposalController(),
    );
  }
}
