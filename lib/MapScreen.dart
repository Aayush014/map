import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _HomeState();
}

class _HomeState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          leading: const Icon(Icons.menu),
          title: const Text('Map !'),
          centerTitle: true,

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              custombox('Exit',const Icon(Icons.exit_to_app)),
              custombox('Play',const Icon(Icons.play_arrow)),
              custombox('Pause',const Icon(Icons.pause)),
              custombox('Stop',const Icon(Icons.stop)),
              custombox('Close',const Icon(Icons.close)),
              custombox('Delete',const Icon(Icons.delete)),
              custombox('Email',const Icon(Icons.email)),

            ],
          ),
        ),
      ),
    );
  }
}

Widget custombox(String name,Icon i1) {
  return Container(
    margin: const EdgeInsets.all(10),
    height: 90,
    width: double.infinity,
    decoration: const BoxDecoration(color: Colors.white
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$name',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
          i1,
        ],
      ),
    ),
  );
}