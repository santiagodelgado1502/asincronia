import 'package:flutter/material.dart';
import 'package:asincronia/services/mockapi.dart';

class screen extends StatefulWidget {
  const screen({super.key, required this.title});

  final String title;
  @override
  screenestado createState() => screenestado();
}

class screenestado extends State<screen> {
  int contador1 = 0;
  int contador2 = 0;
  int contador3 = 0;
  int valortotal = 2;

  void ferrari() async {
    int numero = await MockApi().getFerrariInteger();
    setState(() {
      contador1 = numero;
    });
  }

  void Hyundai() async {
    int numero = await MockApi().getHyundaiInteger();
    setState(() {
      contador2 = numero;
    });
  }

  void Fisher() async {
    int numero = await MockApi().getFisherPriceInteger();
    setState(() {
      contador3 = numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: ferrari,
                backgroundColor: Colors.red,
                child: const Icon(Icons.cloud),
              ),
              AnimatedContainer(
                  duration: Duration(seconds: valortotal),
                  decoration: const BoxDecoration(color: Colors.red)),
              Text(
                '$contador1',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),
              FloatingActionButton(
                onPressed: Hyundai,
                backgroundColor: Colors.yellow,
                child: const Icon(Icons.punch_clock),
              ),
              AnimatedContainer(
                  duration: Duration(seconds: valortotal),
                  decoration: const BoxDecoration(color: Colors.yellow)),
              Text(
                '$contador2',
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),
              FloatingActionButton(
                onPressed: Fisher,
                backgroundColor: Colors.blue,
                child: const Icon(Icons.car_repair),
              ),
              AnimatedContainer(
                  duration: Duration(seconds: valortotal),
                  decoration: const BoxDecoration(color: Colors.blue)),
              Text(
                '$contador3',
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ));
  }
}
