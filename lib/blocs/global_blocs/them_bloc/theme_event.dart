import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable{
}
class OnThemeEvent extends ThemeEvent{
  bool lightMode;
  OnThemeEvent({this.lightMode});

  @override
  List<Object> get props => [lightMode];

}
