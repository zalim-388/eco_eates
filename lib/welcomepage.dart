import 'package:eco_eates/Loginpage.dart';
import 'package:eco_eates/SignUpPage.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/Splash screen Page.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Image.asset(
                'image/pana.png',
                height: 250,
                width: 200,
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
              },
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.purple.shade900),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signuppage(),));
              },
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'sign up using',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    Image.asset(
                      'image/Ellipse 1.png',
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'image/Ellipse 2.png',
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'image/Ellipse 3.png',
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
