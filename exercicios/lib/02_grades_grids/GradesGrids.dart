import 'package:flutter/material.dart';

class GradesGrids extends StatefulWidget {
  const GradesGrids({Key? key}) : super(key: key);

  @override
  _GradesGridsState createState() => _GradesGridsState();
}

class _GradesGridsState extends State<GradesGrids> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Icon(
                Icons.arrow_drop_up,
                size: 100,
                color: Colors.blue.shade800,
              ),
              Icon(Icons.arrow_drop_up, size: 100, color: Colors.blue.shade800),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 70,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  size: 60,
                ),
                Icon(
                  Icons.remove_red_eye_outlined,
                  size: 70,
                ),
              ],
            ),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(35),
              margin: const EdgeInsets.all(15),
              child: GridView.count(
                childAspectRatio: 0.6,
                shrinkWrap: true,
                crossAxisCount: 6,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: List.generate(12, (index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    color: Colors.amber.shade100,
                  );
                }),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                color: Colors.purple.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
