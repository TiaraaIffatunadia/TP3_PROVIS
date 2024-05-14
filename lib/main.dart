import 'package:flutter/material.dart';
import 'package:rent_car/view/chat_body.dart';
import 'package:rent_car/view/login_page.dart';
import 'package:rent_car/view/pemesanan.dart';
import 'package:rent_car/view/splash.dart';
import 'package:rent_car/view/tambahdata.dart';
import 'package:rent_car/view_model/userProvider.dart';import 'package:provider/provider.dart';
import 'package:rent_car/view/home_page.dart';
import 'package:rent_car/view_model/daftarkosdetailprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => DaftarCarDetailProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => WelcomeScreen(),
        '/Login': (context) => LoginPage(),
        '/Home': (context) => HomePage(),
        '/chat': (context) => ChatPage(),
        '/rental': (context) => PemesananPage(),
        '/add':(context) => AddData()
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF0472BC),
      ),
    );
  }
}