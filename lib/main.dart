import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_bloc.dart';
import 'package:clone_english_app/blocs/global_blocs/them_bloc/theme_state.dart';
import 'package:clone_english_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc,ThemeChangeState>(
        builder: (context, state) => MaterialApp(
          theme: state.themeState.themeData,
          home: HomePage(),
        ),
      ),
    );
  }
}
