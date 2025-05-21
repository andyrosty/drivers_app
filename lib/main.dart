import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'authentication/login_screen.dart';

// Entry point of the application
Future<void> main() async
{
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  // Request location permission if not already granted
  await Permission.locationWhenInUse.isDenied.then((valueOfPermission)
  {
    if(valueOfPermission)
    {
      Permission.locationWhenInUse.request();
    }
  });

  // Launch the app
  runApp(const MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      // Set dark theme with black background
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      // Set the login screen as the initial screen
      home: LoginScreen(),
    );
  }
}
