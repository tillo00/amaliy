import 'package:flutter/material.dart';
import 'package:flutter_application_1/t.dart';


class ss extends StatefulWidget {
  const ss({super.key});

  @override
  State<ss> createState() => _ssState();
}

class _ssState extends State<ss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.white,
            Colors.blue,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 74, 10, 156),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                    backgroundColor: Colors.white,
                                    title: Text("Bato"),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            22, 10, 0, 10),
                                        child: Text(
                                          "keyingi sahifaga o'tasizmi?",
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            tillo(),
                                                      ),
                                                    );
                                                  },
                                                  child: Text("Xa")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    setState(() {});
                                                  },
                                                  child: Text("Yo'q")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                        });
                      },
                      icon: Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                    backgroundColor: Colors.white,
                                    title: Text("Bato"),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            22, 10, 0, 10),
                                        child: Text(
                                          "keyingi sahifaga o'tasizmi?",
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            tillo(),
                                                      ),
                                                    );
                                                  },
                                                  child: Text("Xa")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    setState(() {});
                                                  },
                                                  child: Text("Yo'q")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                        });
                      },
                      icon: Icon(
                        Icons.call_end,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                    backgroundColor: Colors.white,
                                    title: Text("Bato"),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            22, 10, 0, 10),
                                        child: Text(
                                          "keyingi sahifaga o'tasizmi?",
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            tillo(),
                                                      ),
                                                    );
                                                  },
                                                  child: Text("Xa")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    setState(() {});
                                                  },
                                                  child: Text("Yo'q")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                        });
                      },
                      icon: Icon(
                        Icons.cabin,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 130,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  children: [
                    for (var i = 0; i < 501; i++)
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                            10,
                          )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "card number",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                                Text(
                                  "$i",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
