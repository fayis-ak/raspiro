import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:respiro_projectfltr/Admin/Ad_AQI.dart';
import 'package:respiro_projectfltr/Admin/Ad_General.dart';
import 'package:respiro_projectfltr/Admin/Ad_notification.dart';

class Ad_Home extends StatefulWidget {
  const Ad_Home({super.key});

  @override
  State<Ad_Home> createState() => _Ad_HomeState();
}

class _Ad_HomeState extends State<Ad_Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/res.jpg"),
            ),
          ),
          title: Text('RESPIRO',
              style: GoogleFonts.elsie(
                  color: const Color.fromARGB(255, 222, 170, 11))),
          actions:  [
            VerticalDivider(
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child:TextButton(onPressed: (){
 Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Ad_AQI()),
);
              }, child: Text(
                "AQI",
                style: TextStyle(fontSize: 24),
              ),)
               
            ),
            VerticalDivider(
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(onPressed: (){
                 Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Ad_General()),
);

              }, child: Text(
                "General",
                style: TextStyle(fontSize: 24),
              ),)
              
            ),
            VerticalDivider(
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child:IconButton(onPressed: (){
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Ad_notification()),
);
              }, icon:  Icon(
                Icons.notifications_active,
                size: 35,
              ),)
              
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const Divider(
              color: Colors.black,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 05,
                            offset: const Offset(0.5, 0.5)),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Angadipuram",
                              style: TextStyle(fontSize: 26),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              color: const Color.fromARGB(255, 177, 174, 163),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 6),
                              
                              child: Text(
                                "AQI",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 159,
                width: 360,
                decoration: BoxDecoration(
                  color: HexColor("FCD594"),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 33),
                  child: Text(
                    "Chech Air Quality",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: HexColor("D2891B"),
                        shadows: const [
                          Shadow(
                              offset: Offset(5, 5),
                              blurRadius: 7,
                              color: Colors.black)
                        ]),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 333,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 05,
                            offset: const Offset(0.5, 0.5))
                      ]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Universal AQI:",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                      Text("_________")
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: HexColor("F4EAB6"),
                    ),
                    child: Column(children: [
                      const Text("Pollutions"),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 16),
                        child: Row(children: [
                          Container(
                            height: 90,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: HexColor("F4BE6D"),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.green,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text("PM2.5",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13)),
                                      ),
                                      Text(
                                        "317",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                                height: 90,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: HexColor("F4BE6D"),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 13,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: const Color.fromARGB(
                                            255, 206, 200, 16),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text("PM10",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13)),
                                          ),
                                          Text(
                                            "486.5",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: HexColor("F4BE6D"),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color:
                                          const Color.fromARGB(255, 198, 54, 32),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("O3",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Text(
                                          "31.7",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: HexColor("F4BE6D"),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 13,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          color: const Color.fromARGB(
                                              255, 149, 55, 12),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 20),
                                              child: Text("CO",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 13)),
                                            ),
                                            Text(
                                              "150",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 16, top: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: HexColor("F4BE6D"),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 13,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: const Color.fromARGB(
                                            255, 205, 15, 126),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text("NO2",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13)),
                                          ),
                                          Text(
                                            "31.4",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Container(
                                    height: 90,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: HexColor("F4BE6D"),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 13,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color: const Color.fromARGB(
                                                255, 230, 23, 203),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 20,
                                                ),
                                                child: Text("SO3",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13)),
                                              ),
                                              Text(
                                                "9.5",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          ))
                    ])),
              ),
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 142, 128, 128)
                            .withOpacity(0.5),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: Container(
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: HexColor("F4BE6D")),
                          tabs: const [
                            Tab(
                              text: "Hourly",
                            ),
                            Tab(
                              text: "Daily",
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 400,
              child: TabBarView(children: [
                Card(
                  elevation: 2,
                  child: Container(
                      height: 20,
                      width: 60,
                      color: const Color.fromARGB(255, 234, 191, 105),
                      child: const Text('hg')),
                ),
                Card(
                    child: Container(
                        height: 20,
                        width: 60,
                        color: const Color.fromARGB(255, 234, 191, 105),
                        child: const Text("khg"))),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
