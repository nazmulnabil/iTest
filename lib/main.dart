import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:itest_app/bindings/question_page_binding.dart';
import 'package:itest_app/views/pages/Authentication/sign_in.dart';
import 'package:itest_app/views/pages/question_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodBank',
      theme: ThemeData(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => SignIn()),
        GetPage(
            name: "/question",
            page: () => QuestionPage(),
            binding: QuestionPageBinding())
      ],
    );
  }
}
