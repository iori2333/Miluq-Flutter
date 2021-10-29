import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:miluq/router/router.dart';
import 'package:miluq/router/routes.dart';
import 'package:miluq/store/theme.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  if (!kIsWeb && (Platform.isLinux || Platform.isWindows)) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => MiluqTheme())],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {
    Routes.configureRoutes($router);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miluq',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: context.watch<MiluqTheme>().color,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      onGenerateRoute: $router.generator,
      themeMode: context.watch<MiluqTheme>().mode,
    );
  }
}
