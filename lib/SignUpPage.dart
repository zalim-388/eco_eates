import 'package:eco_eates/Home_Page.dart';
import 'package:eco_eates/Loginpage.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
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
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'image/png.png',
                  height: 250,
                  width: 200,
                ),
                Text(
                  'sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'password',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(onTap: () {
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
                      'Sign up',
                      style:
                          TextStyle(color: Colors.purple.shade900, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text(
                        'have an account ?',
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Loginpage(),
                                ));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 17, color: Colors.yellowAccent),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
