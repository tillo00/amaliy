import 'package:flutter/material.dart';

class Mylistpage extends StatefulWidget {
  const Mylistpage({super.key});

  @override
  State<Mylistpage> createState() => _MylistpageState();
}

class _MylistpageState extends State<Mylistpage> {
  List<String> date = [];
  String top = '';
  String t = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
          child: ListView.builder(
              itemCount: date.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ListTile(
                      title: Text(date[index]),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => SimpleDialog(
                                                children: [
                                                  TextField(
                                                    onChanged: (value) {
                                                      setState(() {
                                                        t = value;
                                                      });
                                                    },
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          date[index] = t;
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('data')),
                                                ],
                                              ));
                                    },
                                    icon: Icon(Icons.edit))),
                            Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        date.removeAt(index);
                                      });
                                    },
                                    icon: Icon(Icons.delete))),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                        backgroundColor: Colors.amber,
                        title: Text('malumot kiriting'),
                        children: [
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                top = value;
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('cancel')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    setState(() {
                                      date.add(top);
                                    });
                                  },
                                  child: Text('add')),
                            ],
                          )
                        ],
                      ));
            }));
  }
}
