import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nim/components/dialog.dart';
import 'package:flutter_nim/components/fadenav.dart';
import 'package:flutter_nim/screens/game_states/started.dart';

class NotStarted extends StatefulWidget {
  const NotStarted({super.key});

  @override
  State<NotStarted> createState() => _NotStartedState();
}

class _NotStartedState extends State<NotStarted> {
  final maxquant = TextEditingController();
  final maxretirar = TextEditingController();

  void validate(quant, ret) {
    if (quant >= 2 && ret < quant && ret > 0) {
      Navigator.of(context).push(
        CustomPageRoute(
          Started(
            maxquant: quant,
            maxretirar: ret,
          ),
        ),
      );
    } else {
      errorModal(context);
    }
    return;
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 500,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Quantidade gravetos:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextFormField(
                          controller: maxquant,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]'),
                            ),
                            LengthLimitingTextInputFormatter(3),
                          ],
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFF52CC83),
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            labelText: "Mín: 2",
                            labelStyle: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Quantidade  máxima a ser retirada:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextFormField(
                          controller: maxretirar,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]'),
                            ),
                            LengthLimitingTextInputFormatter(3),
                          ],
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFF52CC83),
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            labelText: "",
                            labelStyle: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                    validate(
                      int.parse(maxquant.text),
                      int.parse(maxretirar.text),
                    );
                  },
                  child: const Text(
                    "Começar",
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
        ),
      ),
    );
  }
}
