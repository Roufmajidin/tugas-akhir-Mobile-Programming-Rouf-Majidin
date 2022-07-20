import 'package:get/get.dart';

import '../controllers/friend_controller.dart';

class FriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FriendController>(
      () => FriendController(),
    );
  }
}
