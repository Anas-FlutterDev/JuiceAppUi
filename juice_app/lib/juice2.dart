import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:juice_app/juice3.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  late List flavour = [
    "images/starw.jpeg",
    "images/oranges.jpeg",
    "images/mixed.jpeg",
    "images/berrie.jpg",
    "images/grapes.jpg"
  ];
  late List name = ["Starwberry", "Oranges", "Mixed", "Blue Berry", "Grapes"];
  late List amount = [
    "Rs30 / glass",
    "Rs25 / glass",
    "Rs40 / glass",
    "Rs20 / glass",
    "Rs25 / glass"
  ];
  late List locations = [
    "Islamabad",
    "Karachi",
    "Lahore",
    "Fasilabad",
    "Multan"
  ];
  late String desc =
      "mixed with chilled ice and griended with spozita ,picked with soft hands in sunshine morning.100% pure,hygiene and checked by fssai.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/berries.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                height: 50.0,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.sort,
                    color: Colors.white,
                    size: 35.0,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Text(
                      "Healthy outside ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Uchen"),
                    ),
                  ),
                  Center(
                    child: Text(
                      " start",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 31,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Uchen"),
                    ),
                  ),
                  Center(
                    child: Text(
                      " from inside",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Uchen"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 78.0, top: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "We provides a variety of juices with various flavours.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.3,
                        wordSpacing: 5,
                        color: Colors.white.withOpacity(0.95),
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontFamily: "SquarePeg"),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Our some variants",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.3,
                        wordSpacing: 5,
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Uchen"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: flavour.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screen3(
                                  background: flavour[index],
                                  title: name[index],
                                  amount: amount[index],
                                  desc: desc,
                                  location: locations[index])),
                        );
                      },
                      child: Column(
                        children: [
                          Hero(
                            tag: flavour[index],
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 0 : 20),
                              width: 140.0,
                              height: 160.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      flavour[index],
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Uchen",
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
