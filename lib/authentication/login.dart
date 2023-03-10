import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen>
{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                  "images/seller.png",
                height:270,
              )
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  data: Icons.person,
                  controller: emailController,
                  hintText: "Email",
                  isObsecre: false,
                ),
                CustomTextField(
                  data: Icons.person,
                  controller: passwordController,
                  hintText: "Password",
                  isObsecre: true,
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
            onPressed: ()=> print("clicked"),
          ),
          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}
