import 'package:flutter/material.dart';

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
                child: Column(
                  children: [
                    Container(),
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
                              Icon(Icons.settings),
                            ],
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
