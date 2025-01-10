import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          child:Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.purple.shade900,
                      ))),

                      //loction


                     


            ],
          ) ,
        ));
  }
}
