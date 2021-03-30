import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_event.dart';
import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
class ThemeBloc extends HydratedBloc<ThemeEvent,ThemeChangeState>{
  ThemeBloc() : super(LightThemeState());

  @override
  Stream<ThemeChangeState> mapEventToState(ThemeEvent event) async*{
    if(event is OnThemeEvent){
      yield* _onChangeTheme(event.lightMode);
    }
  }
  Stream<ThemeChangeState> _onChangeTheme(bool isLightMode) async*{
    if(isLightMode){
      yield LightThemeState();
    }else{
      yield DarkThemeState();
    }
  }

  @override
  ThemeChangeState fromJson(Map<String, dynamic> json) {
      bool isLightMode=json['isLightMode'] as bool;
      if(!isLightMode){
        return LightThemeState();
      }else{
        return DarkThemeState();
      }

  }

  @override
  Map<String, dynamic> toJson(ThemeChangeState state) {
    return {"isLightMode" : state.themeState.isLightMode};
  }


}