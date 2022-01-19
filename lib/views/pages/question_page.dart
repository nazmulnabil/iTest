import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itest_app/constants/size_config.dart';
import 'package:itest_app/constants/theme_colors.dart';
import 'package:itest_app/controller/question_controller.dart';
import 'package:itest_app/views/widgets/question_info.dart';

class QuestionPage extends StatelessWidget {
  QuestionPage({Key? key}) : super(key: key);
  // QuestionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    var currentPageValue = 0.0;

    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);

    // List<String> items = ["Medium", "Transmission", "Message", "Protocol"];
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: ThemeColors.baseThemeColor,
                padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Question 6',
                            style:
                                TextStyle(color: ThemeColors.whiteTextColor)),
                        Container(
                          height: 40,
                          width: 70,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            border: const Border(
                              top:
                                  BorderSide(color: ThemeColors.whiteTextColor),
                              bottom:
                                  BorderSide(color: ThemeColors.whiteTextColor),
                              left:
                                  BorderSide(color: ThemeColors.whiteTextColor),
                              right:
                                  BorderSide(color: ThemeColors.whiteTextColor),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.timelapse,
                                  color: ThemeColors.whiteTextColor),
                              Text('3:26',
                                  style: TextStyle(
                                      color: ThemeColors.whiteTextColor)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            Get.find<QuestionController>().questions.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              top: 35, bottom: 60, left: 1, right: 1),
                          child: Container(
                            width: 20,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //question container
        Positioned(
          left: 15,
          right: 15,
          bottom: 0,
          top: SizeConfig.screenHeight! / 4.5,
          child: PageView.builder(
              controller: pageController,
              itemCount: Get.find<QuestionController>().questions.length,
              itemBuilder: ((context, position) {
                return QuestionInfo(
                  question: Get.find<QuestionController>().questions[position],
                );
              })),
        ),
      ],
    ));
  }
}
