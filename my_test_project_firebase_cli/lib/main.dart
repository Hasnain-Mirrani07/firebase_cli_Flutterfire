import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth/signin.dart';
import 'auth/signup.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  print(
      '-- WidgetsFlutterBinding.ensureInitialized ${WidgetsFlutterBinding.ensureInitialized()}');

  await Firebase.initializeApp();
  print('-- main: Firebase.initializeApp');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInView(),
    );
  }
}
