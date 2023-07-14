import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_toturials/provider/authprovider.dart';
import 'package:provider_toturials/provider/count_provider.dart';
import 'package:provider_toturials/provider/sliderprovider.dart';
import 'package:provider_toturials/provider/favourit_provider.dart';
import 'package:provider_toturials/provider/themeprovider.dart';
import 'package:provider_toturials/screens/authpage.dart';
import 'package:provider_toturials/screens/favourit.dart';
import 'package:provider_toturials/screens/notifierlisner.dart';
import 'package:provider_toturials/screens/sliderexample.dart';
import 'package:provider_toturials/screens/themepage.dart';
import 'count_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => SliderProvider(),),
      ChangeNotifierProvider(create: (context) => CountProvider(),),
      ChangeNotifierProvider(create: (context) => FavouritProvider(),),
      ChangeNotifierProvider(create: (context) => ThemeProvider(),),
      ChangeNotifierProvider(create: (context) => AuthProvider(),)
    ],child: Builder(
      builder: (context) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: provider.themeMode,
          darkTheme: ThemeData(
            brightness: Brightness.dark
          ),
          theme: ThemeData(
            brightness: Brightness.light
          ),
          home:  LoginPage(),
        );
      }
    ),);

  }
}

