import 'package:flutter/material.dart';
import 'package:t_store/services/auth/auth_service.dart';

import '../components/my_button.dart';
import '../components/my_textField.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final   emailController = TextEditingController();
  final  passwordController = TextEditingController();
  final  confirmPasswordController = TextEditingController();

  //  register method
  void register() async {
    // get auth service
    final _authService = AuthService();

    // check if password match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      // try create user
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text,
            passwordController.text);
      }

      // display any error

      catch (e) {
        showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
                  title: Text(e.toString()),
                )
        );
      }
    }

    else {
      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: Text("Password dont match"),
              ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25,),

            // message, app slogan
            Text(
              "Let's create an account",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email text field
            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false
            ),

            const SizedBox(height: 10),

            // password textField
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // confirm password textField

            MyTextField(
              controller: passwordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // sign Up button
            MyButton(
              text: "Sign Up",
              onTap: () {},
            ),

            const SizedBox(height: 10),

            // already have an account? log in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
            // not a member? register now
          ],
        ),
      ),
    );
  }
}
