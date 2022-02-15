import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:my_store_system_app/screens/dashboard/dashboard_screen.dart';

class DashboardModule extends ModuleWidget {

  @override
  List<Bloc> get blocs => [
  ];

  @override
  List<Dependency> get dependencies => [
  ];

  @override
  Widget get view => DashboardScreen();

  static Inject get to => Inject<DashboardModule>.of();
}