import 'package:flutter/material.dart';
import 'package:flutter_application_1/t.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyAp());

class MyAp extends StatelessWidget {
  const MyAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {'/t': (context) => tillo()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // List of pages or screens to navigate to
  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      
      appBar: AppBar(backgroundColor: Colors.red,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(DateFormat('yyyy-MM-dd').format(DateTime.now())),
          ),
          title: const Text("final exam"),
          centerTitle: true,
          actions: [
            DigitalClock(
              hourMinuteDigitTextStyle: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black),
              secondDigitTextStyle: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.black),
              colon: Text(
                ":",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.black),
              ),
            )
          ]),
      body:
      
      
       _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.yellow,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
 
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page1();
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page2();
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page3();
  }
}
