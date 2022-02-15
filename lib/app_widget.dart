

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_system_app/screens/splash/splash_module.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var localizationDelegate = LocalizedApp.of(context).delegate;
    return GetMaterialApp(
      title: 'Meu Sistema',
      theme: ThemeData(fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
      home: SplashModule(),
    );
  }
}

