import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable{
  final bool isLightMode;
  final ThemeData themeData;
  const ThemeState({this.themeData, this.isLightMode});

  factory ThemeState.light(){
    return ThemeState(themeData: ThemeData.light(),isLightMode: false);
  }
  factory ThemeState.dark(){
    return ThemeState(themeData: ThemeData.dark(),isLightMode: true);
  }

  @override
  List<Object> get props => [isLightMode,themeData];
}
abstract class ThemeChangeState extends Equatable{
  final ThemeState themeState;
  ThemeChangeState({this.themeState});

  @override
  List<Object> get props => [themeState];

}
class LightThemeState extends ThemeChangeState{
  static final state=ThemeState.light();
  LightThemeState() : super(themeState: state);
}
class DarkThemeState extends ThemeChangeState{
  static final state=ThemeState.dark();
  DarkThemeState() : super(themeState: state);
}