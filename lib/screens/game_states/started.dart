import 'package:flutter/material.dart';

class Started extends StatefulWidget {
  const Started({
    super.key,
    required this.maxquant,
    required this.maxretirar,
  });

  final int maxquant, maxretirar;

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Container(
          decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 7, 14)),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "NIM",
                style: TextStyle(
                  fontFamily: "Onest",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFC33434),
                  fontSize: 50,
                ),
              ),
              Text(
                "GAME",
                style: TextStyle(
                  fontFamily: "Onest",
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000E1D),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Container(
            width: 600,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF031A34),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
