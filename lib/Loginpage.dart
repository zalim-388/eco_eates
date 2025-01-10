import 'package:eco_eates/Home_Page.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'image/helo.png',
                  height: 250,
                  width: 200,
                ),
                Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'password',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                      counter: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget password ?',
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 17),
                          )),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(onTap:  () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                },
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style:
                          TextStyle(color: Colors.purple.shade900, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text(
                        'Not a Member',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'sign up',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )
              ]),
            ),
          )),
    );
  }
}
