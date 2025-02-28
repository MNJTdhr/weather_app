import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("data", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 35, 40, 20),
        child: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "📍 Location",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Good Morning",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/1.png"),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "25°C",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "SUNNY",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Friday 16th - 10:10am",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/11.png', scale: 8),
                              SizedBox(width: 3),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sunrise",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "5:34 am",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Image.asset('assets/12.png', scale: 8),
                              SizedBox(width: 3),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sunset",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "5:34 pm",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(height: 50, color: Colors.grey.shade800),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/13.png', scale: 8),
                              SizedBox(width: 3),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Max temp",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "30°C",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Image.asset('assets/14.png', scale: 8),
                              SizedBox(width: 3),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Min temp",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "20°C",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
