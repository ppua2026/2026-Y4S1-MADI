import 'package:flutter/material.dart';
import 'package:mad/main_screen.dart';
import 'package:mad/register_screen.dart';
import 'package:mad/widgets/logo_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameTextEditCtl = TextEditingController();
  final passwordTextEditCtl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _onLoginClick() {
    if (_formKey.currentState!.validate()) {
      String username = usernameTextEditCtl.text;
      String password = passwordTextEditCtl.text;
      print("username : $username , passowrd : $password");
    } else {
      final snackBar = SnackBar(
        content: Text("Please inut Usenrame & Password"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appLogo = Padding(padding: EdgeInsets.only(top: 32), child: app_logo);

    final usernameTextField = Padding(
      padding: EdgeInsets.only(bottom: 4, top: 4),
      child: TextFormField(
        controller: usernameTextEditCtl,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Username could not be blank";
          }
          return null;
        },
      ),
    );

    final passwordTextField = Padding(
      padding: EdgeInsets.only(bottom: 4, top: 4),
      child: TextFormField(
        obscureText: true,
        controller: passwordTextEditCtl,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Password could not be blank";
          }
          return null;
        },
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 50,
        width: 200,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: _onLoginClick,
          child: Text("Login", style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgetPasswordButton = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [TextButton(onPressed: () {}, child: Text("Forget Password"))],
    );

    final skipButton = Padding(
      padding: EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: () {
          final route = MaterialPageRoute(
            builder: (BuildContext context) => MainScreen(),
          );
          Navigator.pushReplacement(context, route);
        },
        child: Text("Skip"),
      ),
    );

    final noAccountToRegister = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(onPressed: () {
          final route = MaterialPageRoute(builder: (BuildContext context) => RegisterScreen());
          Navigator.push(context, route);
        }, child: Text("Register")),
      ],
    );

    final facebookButton = IconButton(
      onPressed: () {},
      icon: Icon(Icons.facebook, color: Colors.blue),
    );

    final googleButton = IconButton(
      onPressed: () {},
      icon: Icon(Icons.mail_outlined, color: Colors.red),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            appLogo,
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    usernameTextField,
                    passwordTextField,
                    forgetPasswordButton,
                    loginButton,
                    skipButton,
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [facebookButton, googleButton],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: noAccountToRegister,
            ),
          ],
        ),
      ),
    );
  }
}
