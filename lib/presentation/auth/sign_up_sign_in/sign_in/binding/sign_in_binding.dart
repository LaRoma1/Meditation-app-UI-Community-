import '../controller/sign_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogInScreen.
///
/// This class ensures that the LogInController is created when the
/// LogInScreen is first loaded.
class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
