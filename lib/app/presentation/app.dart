import 'package:flutter/material.dart';
import 'package:template_project/app/logic/multi_bloc_wrapper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MultiBlocWrapper(child: MaterialApp());
  }
}
