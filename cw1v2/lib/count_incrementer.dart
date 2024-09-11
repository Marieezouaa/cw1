import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountIncrementer extends StatefulWidget {
  const CountIncrementer({super.key});

  @override
  State<CountIncrementer> createState() {
    return _CountIncrementer();
  }
}

class _CountIncrementer extends State<CountIncrementer> {
  var initNumber = 0;

  void increment() {
    setState(() {
      initNumber++;
    });
  }

  void reset() {
    setState(() {
      initNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Current Count: $initNumber",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(112, 72, 176, 1),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: const Text("Increment"),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: reset,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(112, 72, 176, 1),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: const Text("Reset"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
