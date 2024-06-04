import 'package:flutter/material.dart';
import 'package:quotes_app_daily_task/HomeScreen/Quotes_Screen.dart';

void main()
{
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quotes(),
    );
  }
}
