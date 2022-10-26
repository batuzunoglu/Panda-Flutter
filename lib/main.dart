import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:panda_flutter/responsive/mobile_screen_layout.dart';
import 'package:panda_flutter/responsive/responsive_layout_screen.dart';
import 'package:panda_flutter/responsive/web_screen_layout.dart';
import 'package:panda_flutter/screens/login_screen.dart';
import 'package:panda_flutter/screens/signup_screen.dart';
import 'package:panda_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCHeJWLeoeHzQ0zD_Ip-QC0s6rmiHGZneU',
        appId: '1:1034439349249:web:d30de96987b4a8dbd35c00',
        messagingSenderId: '1034439349249',
        projectId: 'panda-149d9',
        storageBucket: 'panda-149d9.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panda',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: const SignupScreen(),
    );
  }
}
