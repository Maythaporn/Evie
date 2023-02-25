import 'package:flutter/material.dart';

import '../help_center/helpcenter.dart';
import '../setting/settings.dart';
import '../feedback/feedback.dart';
import '../usage_statics/date.dart';

class Financials extends StatefulWidget {
  @override
  _FinancialsState createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("BUSINESS NAME",
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
            automaticallyImplyLeading: false,
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.construction_rounded),
                tooltip: 'Contact',
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('Contact')));
                },
              ),
            ]),
        body: Container(
            child: Row(
          children: <Widget>[
            Container(
              width: 255,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 220,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/logo.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(height: 100.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => usage_date_homepage(),
                            settings: RouteSettings(name: '/usage')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Usage Statics',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Financials(),
                            settings: RouteSettings(name: '/financial')),
                      );
                    },
                    child: Container(
                      width: 230,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color:
                              selectedIndex == 0 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Financial Statics',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == 0
                                ? Colors.white
                                : Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpCenter(),
                            settings: RouteSettings(name: '/Helpcenter')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Help Center',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Feedbacks(),
                            settings: RouteSettings(name: '/feedback')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Feedback',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings(),
                            settings: RouteSettings(name: '/settings')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 160.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Feedbacks(),
                            settings: RouteSettings(name: '/')),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/logout.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
