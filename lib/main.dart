import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/pages/forget-password.dart';
import 'package:furniture_app/pages/login-page.dart';
import 'package:furniture_app/pages/registrasi-page.dart';
import 'package:furniture_app/pages/verification-page.dart';
import 'package:furniture_app/providers/is-hidden-password.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HiddenPasswordProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :(context) => LoginPage(),
          '/registrasi-page':(context) => RegisterPage(),
          '/verification-page':(context) => VerificationPage(),
          '/forget-password':(context) => ForgetPassword(),
        },
      ),
    );
  }
}