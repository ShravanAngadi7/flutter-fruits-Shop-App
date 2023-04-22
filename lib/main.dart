import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp_ytube/model/cart_model.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => CartModel()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        theme: ThemeData(primarySwatch: Colors.blueGrey),
      ),
    );
  }
}
