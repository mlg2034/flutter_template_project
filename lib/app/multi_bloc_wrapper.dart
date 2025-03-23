import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//WIDGET FOR BLOC REGISTRATION
class MultiBlocWrapper extends StatelessWidget {
  final Widget child;

  const MultiBlocWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [], child: Builder(builder: (context) => child));
  }
}
