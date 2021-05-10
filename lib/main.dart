import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool tempSwitch = true;
  bool wallSwitch = false;
  bool tvSwitch = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          Text('Chris Cooper',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text('Living Room',
                      style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            height: size.height * 0.25,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: tempSwitch
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Home',
                                          style: TextStyle(
                                              color: tempSwitch
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontSize: 18.0)),
                                      Text('Temperature',
                                          style: TextStyle(
                                              color: tempSwitch
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontSize: 18.0)),
                                    ],
                                  ),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('23',
                                            style: TextStyle(
                                                color: tempSwitch
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontSize: 45.0,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text('\u2103',
                                            style: TextStyle(
                                                color: tempSwitch
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontSize: 18.0))
                                      ],
                                    ),
                                  ),
                                  CupertinoSwitch(
                                      value: tempSwitch,
                                      activeColor:
                                          Color.fromARGB(255, 184, 166, 146),
                                      onChanged: (value) {
                                        setState(() {
                                          tempSwitch = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            height: size.height * 0.25,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: wallSwitch
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Plug Wall',
                                          style: TextStyle(
                                              color: wallSwitch
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontSize: 18.0)),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: wallSwitch
                                            ? Colors.black
                                            : Colors.white,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 70,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            bullet(wallSwitch),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text('Macbook Pro',
                                                style: TextStyle(
                                                    color: wallSwitch
                                                        ? Colors.black
                                                        : Colors.white,
                                                    fontSize: 12.0))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            bullet(wallSwitch),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text('HomePod',
                                                style: TextStyle(
                                                    color: wallSwitch
                                                        ? Colors.black
                                                        : Colors.white,
                                                    fontSize: 12.0))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            bullet(wallSwitch),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text('PlayStation 5',
                                                style: TextStyle(
                                                    color: wallSwitch
                                                        ? Colors.black
                                                        : Colors.white,
                                                    fontSize: 12.0))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  CupertinoSwitch(
                                      value: wallSwitch,
                                      activeColor:
                                          Color.fromARGB(255, 184, 166, 146),
                                      onChanged: (value) {
                                        setState(() {
                                          wallSwitch = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            height: size.width * 0.4,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        child: Image.asset(
                                          'assets/bg_image.jpg',
                                          height: 35,
                                          width: 35,
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Midnight love',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w600)),
                                          Text('Girl in red',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.0)),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.skip_previous_rounded,
                                          color: Colors.white),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius:
                                                BorderRadius.circular(17.0)),
                                        child: Icon(Icons.pause_rounded,
                                            color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.skip_next_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            height: size.width * 0.4,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: tvSwitch?Colors.white:Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Smart TV',style: TextStyle(
                                              color: tvSwitch?Colors.black:Colors.white, fontSize: 16.0
                                          )),
                                          Icon(Icons.arrow_forward_ios_rounded, color: tvSwitch?Colors.black:Colors.white,size: 16,)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text('Samsung UA55 4AC', style: TextStyle(
                                          color: tvSwitch?Colors.black:Colors.white, fontSize: 10.0
                                      )),
                                    ],
                                  ),
                                  CupertinoSwitch(
                                      value: tvSwitch,
                                      activeColor:
                                          Color.fromARGB(255, 184, 166, 146),
                                      onChanged: (value) {
                                        setState(() {
                                          tvSwitch = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        height: size.height * 0.27,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Electricity Usage',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),

                                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.white, size: 18,)
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(height: 140, child: LineChart(data))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  LineChartData data =
      LineChartData(minX: 0, maxX: 10, minY: 0, maxY: 6, lineBarsData: [
    LineChartBarData(
      spots: [
        FlSpot(0.7, 3),
        FlSpot(2.6, 2),
        FlSpot(3.9, 5),
        FlSpot(5.8, 0.2),
        FlSpot(7, 4),
        FlSpot(9, 1),
        FlSpot(9.5, 2),
      ],

      isCurved: true,
      colors: [
        Color.fromARGB(255, 184, 166, 146),
        Color.fromARGB(255, 184, 166, 146)
      ],
    ),
  ]);

  bullet(bool value) {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: new BoxDecoration(
        color: value ? Colors.black : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[300],
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey[400],
//                     offset: Offset(4,4),
//                     blurRadius:10.0,
//                     spreadRadius: 1.0
//                   ),
//                   BoxShadow(
//                     color: Colors.grey[100],
//                     offset: Offset(-4,-4),
//                     blurRadius: 8.0,
//                     spreadRadius: 1.0
//                   ),
//                 ],
//                 // gradient: LinearGradient(
//                 //   begin: Alignment.topLeft,
//                 //   end: Alignment.bottomRight,
//                 //   colors: [
//                 //     Colors.grey[200],
//                 //     Colors.grey[300],
//                 //     Colors.grey[400],
//                 //     Colors.grey[400],
//                 //   ]
//                 // )
//               ),
//               child: Icon(Icons.home_filled,color: Colors.black,size: 80,),
//             ),
//            /* Container(
//               height: 200,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: Color(0xff5455f3),
//                 borderRadius: BorderRadius.circular(20.0)
//               ),
//               child: Stack(
//                 children: [
//                   Center(
//                     child: Container(
//                       height: 180,
//                       width: 280,
//                       decoration: BoxDecoration(
//                         // gradient: LinearGradient(
//                         //   begin: Alignment.topLeft,
//                         //   end: Alignment.bottomRight,
//                         //   colors: [
//                         //     Colors.white24,
//                         //     Colors.white10,
//                         //
//                         //   ]
//                         // ),
//                         boxShadow: [
//                           BoxShadow(
//                             spreadRadius: 5,
//                             color: Colors.white24,
//                             blurRadius: 1.0,
//                             offset: Offset(-3,-4)
//                           ),
//                           BoxShadow(
//                               spreadRadius: 5,
//                               color: Colors.white10,
//                               blurRadius: 1.0,
//                               offset: Offset(4,3)
//                           )
//                         ],
//                         borderRadius: BorderRadius.circular(20.0)
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )*/
//           ],
//         ),
//       ),
//     );
//   }
// }
