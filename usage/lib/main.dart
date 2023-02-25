import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'usage_statics/date.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: usage_date_homepage(),
      title: "EVIE",
      debugShowCheckedModeBanner: false,
    );
  }
}
