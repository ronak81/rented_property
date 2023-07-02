import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Text(
                    "Hello, Wellcome to\nHome finance !",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/home.png"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: " Enter Email address",
                      isDense: true,
                      // border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: " Enter password",
                        // border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      // GoogleAuth().userDoesExist(emailController.text);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 40,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    // final UserCredential registerUserCred= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: user.user!.email!,pa)
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google_logo.png",
                          height: 25,
                          width: 20,
                        ),
                        Text(
                          " Google sign in ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
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
