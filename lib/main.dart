import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/auth.dart';
import 'package:chat_app/screens/chat.dart';
import 'package:chat_app/screens/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ChatWithFlutter",
      theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromARGB(225, 20, 164, 255),
      )),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, snapshot) {

            if(snapshot.connectionState== ConnectionState.waiting){
              return SplashScreen();
            }

            if(snapshot.hasData){
              return ChatScreen();
            }
            return AuthScreen();
          }
      ),
    );
  }
}
