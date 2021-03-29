import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  String _language = "Tiếng Việt";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Language"),
                          SizedBox(
                            height: 8,
                          ),
                          DropdownButton(
                            value: _language,
                            items: <String>['Tiếng Việt', 'English']
                                .map<DropdownMenuItem<String>>(
                                  (String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              _language=value;
                            },
                          ),
                          // InkWell(
                          //   onTap: (){},
                          //   child: Row(
                          //     children: [
                          //       Text("English"),
                          //       SizedBox(width: 16,),
                          //       Icon(Icons.arrow_drop_down),
                          //     ],
                          //   ),
                          // ),
                          // Divider(color: Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rate_outlined,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dark mode"),
                        SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("Off"),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sounds"),
                        SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("Off"),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child: Text("Rating")),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child: Text("Feedback")),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child: Text("Share")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
