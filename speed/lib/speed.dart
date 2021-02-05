// import 'package:flutter/cupertino.dart';
// import 'package:speedometer/speedometer.dart';

// class Speed extends StatefulWidget {
//   @override
//   _SpeedState createState() => _SpeedState();
// }

// class _SpeedState extends State<Speed> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformExamples extends StatefulWidget {
  @override
  _TransformExamplesState createState() => _TransformExamplesState();
}

class _TransformExamplesState extends State<TransformExamples>
    with TickerProviderStateMixin {
  AnimationController animationController,
      animationController2,
      animationController3,
      animationController4;
  // IconData _buttonIcon = Icons.play_arrow;
  dynamic angle1 = 0 / (180 / math.pi);
  dynamic angle2 = 50 / (180 / math.pi);
  dynamic angle3 = 100 / (180 / math.pi);
  dynamic angle4 = 135 / (180 / math.pi);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    animationController2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animationController3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animationController4 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  void onPressedHandler() {
    if (animationController.isDismissed) {
      animationController.forward();
      // setState(() {
      //   _buttonIcon = Icons.arrow_back;
      // });

    } else {
      animationController.reverse();
      // setState(() {
      //   _buttonIcon = Icons.play_arrow;
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset(
              "assets/2.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0, top: 90.0),
            child: Container(
              height: 120.0,
              child: MainContent(animationController, angle4),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: screenWidth * 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      // animationController.reverse();
                      MainContent(animationController, angle1);
                      // animationController.forward();
                      onPressedHandler();
                    },
                    child: Text("Newbie"),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () {
                      // animationController.reverse();
                      MainContent(animationController, angle2);
                      // animationController.forward();
                      onPressedHandler();
                    },
                    child: Text("Enthusiast"),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () {
                      // animationController.reverse();
                      MainContent(animationController, angle3);
                      // animationController.forward();
                      onPressedHandler();
                    },
                    child: Text("Athlete"),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () {
                      // animationController.reverse();
                      MainContent(animationController, angle4);
                      // animationController.forward();
                      onPressedHandler();
                    },
                    child: Text("Pro"),
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      // backgroundColor: Colors.yellow,
      // onPressed: onPressedHandler,
      // child: Icon(
      //   _buttonIcon,
      //   size: 50,
      // ),
      // ),
    );
  }
}

class RedContainer extends StatelessWidget {
  const RedContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  final AnimationController animationController;
  final dynamic angle;

  MainContent(this.animationController, this.angle);
  // dynamic angle = -1.2;
  // dynamic angle = -0.7;
  // dynamic angle = -1.2;

  @override
  Widget build(BuildContext context) {
    // dynamic angle = -65 / (180 / math.pi);
    // dynamic angle = -13 / (180 / math.pi);
    // dynamic angle = 35 / (180 / math.pi);
    // dynamic angle = 73 / (180 / math.pi);
    return AnimatedBuilder(
      animation: this.animationController,
      builder: (context, child) {
        return Transform.rotate(
          alignment: Alignment.bottomCenter,
          angle: -1.1,
          child: Transform.rotate(
              // angle: 1.0,
              // origin: Offset(50.0, 50.0),
              // child: Container(
              //   height: 100.0,
              //   width: 100.0,
              //   color: Colors.blue,
              // ),

              alignment: Alignment.bottomCenter,
              angle:
                  // 135 / (180 / math.pi) * animationController.value,
                  (angle) * animationController.value,
              child: Image.asset("assets/1_1.png")
              // RedContainer(),
              ),
        );
      },
    );
  }
}
