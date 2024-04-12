import "package:flutter/material.dart";

import "login_screen.dart";

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State createState() => _SignupState();
}

class _SignupState extends State {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 86,
            ),
            SizedBox(
              child: Image.asset("accests/images/walet_image.png"),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create your Account",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  getTextFild(labelText: "Name", controller: _nameController),
                  const SizedBox(
                    height: 20,
                  ),
                  getTextFild(
                      labelText: "UserName", controller: _usernameController),
                  const SizedBox(
                    height: 20,
                  ),
                  getTextFild(
                      labelText: "Password", controller: _passwordController),
                  const SizedBox(
                    height: 20,
                  ),
                  getTextFild(
                      labelText: "Confirm Password",
                      controller: _confirmpasswordController),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 49,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(14, 161, 125, 1),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget getTextFild(
      {required String labelText, required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(0, 0, 0, 0.6),
        ),
        fillColor: const Color.fromARGB(255, 231, 233, 238),
      ),
    );
  }
}
