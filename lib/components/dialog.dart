import 'package:flutter/material.dart';

class ErrorDialog extends StatefulWidget {
  const ErrorDialog({super.key});

  @override
  State<ErrorDialog> createState() => _ErrorDialogState();
}

class _ErrorDialogState extends State<ErrorDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 2, 20, 41),
      ),
      height: 250,
      width: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Text(
              "Algum erro foi decectado nos números enviados ao sistema, cheque as informações e certifique-se de corrigir os valores.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
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
              Navigator.of(context).pop();
            },
            child: const Text(
              "FECHAR",
              style: TextStyle(
                fontFamily: "Onest",
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> errorModal(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return const Dialog(
        alignment: Alignment.center,
        insetPadding: EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: ErrorDialog(),
      );
    },
  );
}
