import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_bloc.dart';
import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_event.dart';
import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String _language = "Vietnamese";
  bool checkTheme = false;
  @override
  Widget build(BuildContext context) {
    final theme = BlocProvider.of<ThemeBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cài đặt"),
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
                          Text("Ngôn ngữ"),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: double.infinity,
                            child: DropdownButton(
                              value: _language,
                              items: <String>['Vietnamese', 'English']
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
                          Text("Chế độ ban đêm"),
                          SizedBox(
                            height: 8,
                          ),
                          BlocBuilder<ThemeBloc, ThemeChangeState>(
                            builder: (context, state) => InkWell(
                              onTap: () {
                                theme.add(OnThemeEvent(
                                    lightMode: state.themeState.isLightMode));
                              },
                              child: Container(
                                width: double.infinity,
                                child: state.themeState.isLightMode
                                    ? Text("Bật")
                                    : Text("Tắt"),
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
                          Text("Âm thanh"),
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              child: Text("Tắt"),
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
                        onTap: () async {
                          String url =
                              "https://play.google.com/store/apps/details?id=grammar.englishgrammarpractice&hl=vi&gl=US";
                          await canLaunch(url)
                              ? await launch(url)
                              : throw "Could not launch $url";
                        },
                        child: Text("Đánh giá"),
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
                        child: Text("Phản hồi"),
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
                        onTap: () {
                          Share.share(
                              "https://play.google.com/store/apps/details?id=grammar.englishgrammarpractice&hl=vi&gl=US");
                        },
                        child: Text("Chia sẻ"),
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
