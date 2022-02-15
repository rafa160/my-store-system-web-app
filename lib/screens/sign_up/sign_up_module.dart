import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:my_store_system_app/screens/home/home_screen.dart';
import 'package:my_store_system_app/screens/sign_up/sign_up_screen.dart';

class SignUpModule extends ModuleWidget {

  @override
  List<Bloc> get blocs => [
  ];

  @override
  List<Dependency> get dependencies => [
  ];

  @override
  Widget get view => const SignUpScreen();

  static Inject get to => Inject<SignUpModule>.of();
}