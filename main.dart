import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:t_store/auth/login%20or%20register.dart';
import 'package:t_store/models/restaurant.dart';
import 'package:t_store/pages/register_page.dart';
import 'package:t_store/services/auth/auth_gate.dart';
import 'package:t_store/services/auth/login%20or%20register.dart';
import 'package:t_store/themes/theme_provider.dart';
import 'pages/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

 runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        
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
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}