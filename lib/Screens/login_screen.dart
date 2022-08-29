import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();
  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: (value) => ,
      onSaved: (newValue) {
        emailController.text = newValue!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );

    // password Field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      // keyboardType: TextInputType.pas,
      // validator: (value) => ,
      onSaved: (newValue) {
        emailController.text = newValue!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: () {},
        minWidth: MediaQuery.of(context).size.width,
        child: const Text(
          "Login ",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                        height: 200,
                        child: Icon(
                          Icons.assignment_ind_outlined,
                          size: 150,
                          color: Colors.redAccent,
                        )
                        // Image.asset(
                        //   "assets/icons/chat.png",
                        //   fit: BoxFit.contain,
                        //   // width: 100,
                        //   // height: 100,
                        // ),
                        ),
                    const SizedBox(
                      height: 45,
                    ),
                    emailField,
                    const SizedBox(
                      height: 25,
                    ),
                    passwordField,
                    const SizedBox(
                      height: 35,
                    ),
                    loginButton,
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )),
          ),
        ),
      )),
    );
  }
}
