import 'package:flutter/material.dart';
import 'package:myapp/config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes no App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 1 ).theme(),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: FilledButton(onPressed: () {}, child: Text('Click Me'))),
    );
  }
}
