import 'package:flutter/material.dart';

class sahifa33 extends StatefulWidget {
  const sahifa33({Key? key}) : super(key: key);

  @override
  State<sahifa33> createState() => _sahifa33State();
}

class _sahifa33State extends State<sahifa33> {
  TextEditingController _controller = TextEditingController();
  String result = '';
  Color resultBackgroundColor = Colors.black;

  void handleDay(String userInput) {
    String day;
    if (userInput.toLowerCase() == 'dushanbi') {
      day = 'Monday';
    } else if (userInput.toLowerCase() == 'seshanba') {
      day = 'Tuesday';
    } else if (userInput.toLowerCase() == 'chorshanba') {
      day = 'Wednesday';
    } else if (userInput.toLowerCase() == 'payshanba') {
      day = 'Thursday';
    } else if (userInput.toLowerCase() == 'juma') {
      day = 'Friday';
    } else if (userInput.toLowerCase() == 'shanba') {
      day = 'Saturday';
    } else if (userInput.toLowerCase() == 'yakshanba') {
      day = 'Sunday';
    } else {
      day = 'error';
    }

    setState(() {
      result = day;
      // Optionally, you can also set different colors based on the day here.
      // resultBackgroundColor = ...;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.white,
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          result,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: "Enter the week",
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  String userInput = _controller.text;
                  handleDay(userInput);
                },
                child: Text('Translate'),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
