import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/locator.dart';

import 'ui/views/main/main_view.dart';

Future main() async {
  setPathUrlStrategy();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      title: 'Rakib Uddin',
      debugShowCheckedModeBanner: false,
      home: const MainView(),
   
    
    );
  }
}
