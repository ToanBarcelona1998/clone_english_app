import 'dart:convert';

import 'package:clone_english_app/models/enitys/model_question.dart';
import 'package:clone_english_app/views/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset("assets/images/bg_pencil.jpg"),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                            },
                            child: Container(
                              color: Colors.black12,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    child: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text("Lộ trình"),
                                    ),
                                  ),
                                  Text("0%"),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 30,
                                    lineWidth: 2.0,
                                    percent: 0.4,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.red,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              color: Colors.black12,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    child: Icon(
                                      Icons.airplanemode_on_sharp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text("Trắc nghiệm nhanh"),
                                    ),
                                  ),
                                  Text("0"),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.local_fire_department_sharp,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              color: Colors.black12,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    child: Icon(
                                      Icons.topic_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text("Chủ đề"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              color: Colors.black12,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    child: Icon(
                                      Icons.connected_tv,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text("Bài kiểm tra"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Practice English Grammar v1.1.4"),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SettingPage(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
