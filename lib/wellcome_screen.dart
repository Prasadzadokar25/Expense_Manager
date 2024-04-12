import "package:expense_manager/login_screen.dart";
import "package:flutter/material.dart";

class Wellcome extends StatefulWidget {
  const Wellcome({super.key});

  @override
  State createState() => _WellcomeState();
}

class _WellcomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Spacer(),
            Container(
              height: 144,
              width: 144,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(234, 238, 235, 1),
              ),
              child: Image.asset("accests/images/walet_image.png"),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text(
                "EXPENCE MANEGER",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
