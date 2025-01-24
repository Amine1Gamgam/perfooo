import 'package:aze/Register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screen_Height = MediaQuery.of(context).size.height;
    double screen_Widht = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screen_Height * .50,
            width: screen_Widht,
            child: Image.asset(
              "assets/Perfo1.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Text(
                  "You want to Register",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text(
                  "Sing up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
