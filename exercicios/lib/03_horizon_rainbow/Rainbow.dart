import 'package:flutter/material.dart';

class Rainbow extends StatefulWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  _RainbowState createState() => _RainbowState();
}

class _RainbowState extends State<Rainbow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink.shade300,
            title: const Text(
              "VLAVAAV Horizontal",
              style: TextStyle(fontSize: 25, letterSpacing: 1),
            ),
            centerTitle: true,
          ),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                  ArcoIris(),
                ],
              ),
            ],
          ),
        ));
  }
}

//cores e nomes 
class ArcoIris extends StatelessWidget {
  const ArcoIris({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        CorArcoIris(Color.fromARGB(190, 255, 0, 0), "Vermelho"),
        CorArcoIris(Color.fromARGB(190, 255, 127, 0), "Laranja"),
        CorArcoIris(Color.fromARGB(190, 255, 255, 0), "Amarelo"),
        CorArcoIris(Color.fromARGB(190, 0, 0, 255), "Azul"),
        CorArcoIris(Color.fromARGB(190, 75, 0, 130), "Anil"),
        CorArcoIris(Color.fromARGB(190, 143, 0, 255), "Violeta"),
        CorArcoIris(Color.fromARGB(190, 0, 255, 0), "Verde"),
      ],
    );
  }
}

class CorArcoIris extends StatelessWidget {
  String nomeCor;
  Color color;

  CorArcoIris(
    this.color,
    this.nomeCor, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 50,
      child: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            nomeCor,
            textAlign: TextAlign.center,
            style:
              const TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 2),
          ),
        ),
      ),
    );
  }
}
