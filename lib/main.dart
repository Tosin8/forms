import 'package:flutter/material.dart';

import 'projects/auth_form.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   textTheme:
      //       GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      debugShowCheckedModeBanner: false,
      home: FormPage1(),
    );
  }
}
