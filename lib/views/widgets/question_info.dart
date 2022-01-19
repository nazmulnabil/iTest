import 'package:flutter/material.dart';
import 'package:itest_app/constants/constant.dart';
import 'package:itest_app/constants/size_config.dart';
import 'package:itest_app/models/question_model.dart';
import 'elevated_cutom_button.dart';
import 'item_question.dart';

class QuestionInfo extends StatelessWidget {
  Question question;
  QuestionInfo({required this.question, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //elevation: 5,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //  color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Text(question.question.toString()),
              ),
              ItemQuestions(question.optionA),
              ItemQuestions(question.optionB),
              ItemQuestions(question.optionC),
              ItemQuestions(question.optionD),
              Container(
                margin: EdgeInsets.only(top: AppValues.margin_40),
                width: SizeConfig.screenWidth,
                child: ElevatedCustomButton(
                  function: () => print("submitted"),
                  text: "Submit",
                  fontsize: AppValues.fontSizelarge,
                  buttonHeight: AppValues.padding,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
