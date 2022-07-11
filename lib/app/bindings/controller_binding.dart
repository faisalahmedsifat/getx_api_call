import 'package:api_calling_getx/app/controllers/controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<Controller>(Controller());
  }
}
