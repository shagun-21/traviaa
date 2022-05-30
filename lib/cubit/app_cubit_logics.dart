import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traviaa/cubit/app_cubits.dart';
import 'package:traviaa/pages/detailed_page.dart';
import 'package:traviaa/pages/home_page.dart';
import 'package:traviaa/pages/welcome_page.dart';

import 'app_cubit_states.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
      if (state is WelcomeState) {
        return WelcomePage();
      } 
      if (state is LoadedState) {
        return HomePage();
      }
       if (state is DetailState) {
        return DetailedPage();
      }
      if (state is LoadingState) {
        return Center(child: CircularProgressIndicator());
      }
        else {
        return Container();
      }
    }));
  }
}
