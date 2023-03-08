import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Dashboard'),
          ),
          body: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(1),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    Navigator.pushNamed(context, "api");
                  },
                  icon: const Icon(Icons.api, size: 20),
                  label: const Text("API REST"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () {
                    // Navigator.pushNamed(context, "personalizado");
                    Navigator.restorablePushNamed(context, "personalizado");
                  },
                  icon: const Icon(Icons.youtube_searched_for, size: 20),
                  label: const Text("COMPONENT"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.cyan)),
                  onPressed: () {
                    Navigator.pushNamed(context, "firestorage");
                  },
                  icon: const Icon(Icons.shop, size: 20),
                  label: const Text("FIRESTORAGE"),
                ),
              ),
            ],
          )),
    );
  }
}
