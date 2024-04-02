
import 'package:flutter/material.dart';
import 'homepage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool ispassVisible = true;
  void togglePasswordVisibility() {
    ispassVisible = !ispassVisible;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "AGRIPLANT",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: loginKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              // key: loginKey,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Image.asset(
                  "assets/images/profile.jpg",
                  height: 110,
                  width: 110,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Enter Username",
                      label: const Text("Username"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    return (value != null && value.contains('@'))
                        ? null
                        : 'use the @ char.';
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  obscureText: ispassVisible,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: Icon(ispassVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              togglePasswordVisibility();
                            });
                          }),
                      hintText: "Enter Password",
                      label: const Text("Password"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return (value != null && value.isNotEmpty)
                        ? null
                        : 'Enter valid data';
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).focusNode.previousFocus();
                    bool getlogin = loginKey.currentState!.validate();

                    if (getlogin) {
                      if ((usernamecontroller.text == "shahu@gmail.com" &&
                              passwordcontroller.text == "Shahu@18") ||
                          (usernamecontroller.text == "nikhil@gmail.com" &&
                              passwordcontroller.text == "8636")) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Login Successful")));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "Login Failed, please enter valid data")));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text("Login Failed, please enter valid data")));
                    }
                  },
                  style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(400, 50)),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.greenAccent)),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't Have An Account? ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
                //Image.network("https://media.licdn.com/dms/image/D4D12AQHfnr8DbPw9GQ/article-cover_image-shrink_600_2000/0/1691750985378?e=2147483647&v=beta&t=Q3zPIvuNAI5spHeIrOd4i98cVwI7jBOAIph130Mh0C4")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
