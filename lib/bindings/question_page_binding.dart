import 'package:get/get.dart';
import 'package:itest_app/controller/question_controller.dart';

class QuestionPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionController>(() => QuestionController()); // here!
  }
}
