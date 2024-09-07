import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Padding(
           padding:  EdgeInsets.only(left: 40,right: 40),
           child:   Center(
              child: Text(
                'WELCOME',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
         ),
          const Center(
            child: Text('TO E-COMMERCE-APP' ,style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
              },
              child: Container(
                height: 40,
                width: 400,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF6537EC), // Start color (purple)
                      Color(0xFFDA1A8B), // End color (pink)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child:  Text(
                    'Click here to Move to E-Commerce-App',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
