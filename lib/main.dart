import 'package:dinedash/Services/auth_gate.dart';
import 'package:dinedash/Services/login_or_register.dart';
import 'package:dinedash/Models/restaurant.dart';
import 'package:dinedash/Themes/theme_provider.dart';
import 'package:dinedash/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
   MultiProvider(
     providers: [
     // theme provider
     ChangeNotifierProvider(create: (context) => ThemeProvider()),
       //restaurant provider
     ChangeNotifierProvider(create: (context) => Restaurant()),
     ],
     child: const MyApp(),
   ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

// Owner - @amanxmhd
