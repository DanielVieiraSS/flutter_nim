import 'package:flutter/material.dart';
import 'package:flutter_nim/components/fadenav.dart';
import 'package:flutter_nim/screens/game_states/not_started.dart';

class NimHome extends StatefulWidget {
  const NimHome({
    super.key,
  });

  @override
  State<NimHome> createState() => _NimHomeState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _NimHomeState extends State<NimHome> {
  // Whether the green box should be visible

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000E1D),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "NIM",
                  style: TextStyle(
                    fontFamily: "Onest",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC33434),
                    fontSize: 80,
                  ),
                ),
                Text(
                  "GAME",
                  style: TextStyle(
                    fontFamily: "Onest",
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    fontSize: 80,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.all(30),
                ),
                backgroundColor: const MaterialStatePropertyAll(
                  Color(0xFFC33434),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  CustomPageRoute(
                    const NotStarted(),
                  ),
                );
              },
              child: const Text(
                "JOGAR",
                style: TextStyle(
                  fontFamily: "Onest",
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
