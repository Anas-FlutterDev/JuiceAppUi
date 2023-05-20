import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:juice_app/juice2.dart';

class juiceHome extends StatefulWidget {
  const juiceHome({super.key});

  @override
  State<juiceHome> createState() => _juiceHomeState();
}

class _juiceHomeState extends State<juiceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/berries.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.sort,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "JUICY",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: FaIcon(
                  FontAwesomeIcons.glassCheers,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Berry Juice",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Blend of Berry With Ice That Make Your Tired Day Feels Very Fresh Again.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.95), fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Rs 99 / Glass",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen2()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Explore More",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
