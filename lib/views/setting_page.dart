import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_bloc.dart';
import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_event.dart';
import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String _language = "Tiếng Việt";
  bool checkTheme=false;

  @override
  Widget build(BuildContext context) {
    final theme=BlocProvider.of<ThemeBloc>(context);
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
                          Container(
                            width: double.infinity,
                            child: DropdownButton(
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
                                _language = value;
                              },
                            ),
                          ),
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
                          BlocBuilder<ThemeBloc,ThemeChangeState>(
                            builder: (context,state)=>InkWell(
                              onTap: () {
                                theme.add(OnThemeEvent(lightMode: state.themeState.isLightMode));
                              },
                              child: Container(
                                width: double.infinity,
                                child: state.themeState.isLightMode?Text("On"):Text("Off"),
                              ),
                            ),
                          ),
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
                            child: Container(
                              width: double.infinity,
                              child: Text("Off"),
                            ),
                          ),
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
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Text("Rating"),
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
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Text("Feedback"),
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
                      Icons.source_rounded,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Text("Share"),
                      ),
                    ),
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

