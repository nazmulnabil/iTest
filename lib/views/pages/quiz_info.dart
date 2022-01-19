import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itest_app/constants/constant.dart';
import 'package:itest_app/constants/size_config.dart';
import 'package:itest_app/constants/theme_colors.dart';
import 'package:itest_app/views/widgets/elevated_cutom_button.dart';
import 'package:itest_app/views/widgets/item_question.dart';

class QuizInfo extends StatelessWidget {
  const QuizInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    String dropdownValue = 'One';
    List<String> items = ["Medium", "Transmission", "Message", "Protocol"];
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
                        itemCount: 20,
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
          bottom: 50,
          top: SizeConfig.screenHeight! / 4.5,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'The information to be communicated\n  in a data communication system is\n                         known as',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ItemQuestions(items[index]);
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          //top: AppValues.margin_30,
                          ),
                      width: SizeConfig.screenWidth,
                      child: ElevatedCustomButton(
                        text: "Submit",
                        fontsize: AppValues.fontSizelarge,
                        buttonHeight: AppValues.padding,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
