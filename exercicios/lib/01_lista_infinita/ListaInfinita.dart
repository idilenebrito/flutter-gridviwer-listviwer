import 'package:flutter/material.dart';

class ListaInfinita extends StatefulWidget {
  const ListaInfinita({Key? key}) : super(key: key);

  @override
  _ListaInfinitaState createState() => _ListaInfinitaState();
}

class _ListaInfinitaState extends State<ListaInfinita> {
  @override
  Widget build(BuildContext context) {
    List valoresListview = List<String>.generate(1000, (i) => 'Item n°: $i ');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lista \"Infinita\"",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: const Color.fromARGB(255, 49, 175, 137),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: valoresListview.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: const Color(0xFFEEEEEE),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: ListTile(
                        leading: const Icon(
                          Icons.star_outlined,
                          color: Color.fromARGB(255, 255, 208, 0),
                        ),
                        title: Center(child: Text(valoresListview[index])),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
