import 'dart:convert';

import 'package:clone_english_app/models/enitys/model_question.dart';
import 'package:flutter/services.dart';

class QuestionService{
  loadJson(String assetPath) async{
    List<QuestionModel> list=[];
    String load=await rootBundle.loadString(assetPath);
    List<dynamic> listDynamic=jsonDecode(load);
    listDynamic.forEach((element) {
      QuestionModel questionModel=QuestionModel.fromJson(element);
      list.add(questionModel);
    });
    return list;
  }
}