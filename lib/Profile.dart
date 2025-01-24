import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Column(
  
  children: [

    SizedBox(height: 100,),
    Center(
      child: CircleAvatar(
        radius: 120,  
      ),
    ),

SizedBox(height: 20,),
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
  ],
),

    );
  }
}