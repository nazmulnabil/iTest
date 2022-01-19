import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itest_app/models/question_model.dart';

class QuestionController extends GetxController {
  List questions = [].obs;

  final selectedOption = ''.obs;
  Color oprtionBgColor = Colors.white;

  @override
  void onInit() {
    // TODO: implement onInit

    getAllQuestions();
    super.onInit();
  }

  void verifyAnswer(String givenAnswer, rightAnswer) {}

  void getAllQuestions() {
    questions = [
      Question("1 + 1=?", "0", "2", "3", "4", "2"),
      Question("Which drug is forbidden for cats=?", "Albendazol", "Napa",
          "Napa", "Fast Vet", "B-Complex"),
      Question("When did the last time Man utd win ucl=?", "2021", "2011",
          "2009", "2008", "2008"),
      Question("Who won Epl last year=?", "Liverpool", "Man City", "Man Utd",
          "Everton", "Liverpool"),
      Question("1 + 1=?", "0", "2", "3", "4", "2"),
      Question("Which drug is forbidden for cats=?", "Albendazol", "Napa",
          "Napa", "Fast Vet", "B-Complex"),
      Question("When did the last time Man utd win ucl=?", "2021", "2011",
          "2009", "2008", "2008"),
      Question("Who won Epl last year=?", "Liverpool", "Man City", "Man Utd",
          "Everton", "Liverpool"),
      Question("1 + 1=?", "0", "2", "3", "4", "2"),
      Question("Which drug is forbidden for cats=?", "Albendazol", "Napa",
          "Napa", "Fast Vet", "B-Complex"),
      Question("When did the last time Man utd win ucl=?", "2021", "2011",
          "2009", "2008", "2008"),
      Question("Who won Epl last year=?", "Liverpool", "Man City", "Man Utd",
          "Everton", "Liverpool"),
      Question("1 + 1=?", "0", "2", "3", "4", "2"),
      Question("Which drug is forbidden for cats=?", "Albendazol", "Napa",
          "Napa", "Fast Vet", "B-Complex"),
      Question("When did the last time Man utd win ucl=?", "2021", "2011",
          "2009", "2008", "2008"),
      Question("Who won Epl last year=?", "Liverpool", "Man City", "Man Utd",
          "Everton", "Liverpool"),
    ];
  }
}
