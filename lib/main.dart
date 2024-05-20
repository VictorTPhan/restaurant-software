import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurantsoftware/SplashScreen.dart';
import 'package:restaurantsoftware/employee/employee.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Employee emp = new Employee(name: 'John', lastName: 'Doe', email: 'something@gmail.com', role: 'Server', uid: '1234');

    @override
  Widget build(BuildContext context){
      return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.ralewayTextTheme(),
        ),
        home: const SplashScreen(),
      );
    }
}