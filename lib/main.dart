import 'package:flutter/material.dart';
import 'package:mobxFlutter/screens/checkout.dart';
import 'package:mobxFlutter/screens/home.dart';
import 'package:mobxFlutter/store/carrinho_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late BuildContext context;
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 255, 83, 83),
          ),
          useMaterial3: true),
      home: Provider(
        create: (_) => CarrinhoStore(),
        child: Home(),
      ),
    );
  }
}
