import 'package:flutter/material.dart';
import 'package:speed/speed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TransformExamples(),
    );
  }
}

// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:speedometer/speedometer.dart';
// import 'package:rxdart/rxdart.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
//         // counter didn't reset back to zero; the application is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: new MyHomePage(title: 'SpeedOMeter Example'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // double _lowerValue = 20.0;
//   // double _upperValue = 40.0;
//   // int start = 20;
//   // int end = 20;

//   int counter = 0;

//   PublishSubject<double> eventObservable = new PublishSubject();
//   @override
//   void initState() {
//     super.initState();
//     const oneSec = const Duration(seconds: 1);
//     var rng = new Random();
//     new Timer.periodic(oneSec,
//         (Timer t) => eventObservable.add(rng.nextInt(1) + rng.nextDouble()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData somTheme = new ThemeData(
//         primaryColor: Colors.black,
//         accentColor: Colors.amber,
//         backgroundColor: Colors.green);
//     return new Scaffold(
//         body: new Column(
//       children: <Widget>[
//         Transform.rotate(
//   alignment: Alignment.bottomCenter,
//   angle: (25 / (180 / math.pi)) * animationController.value,
//   child:  Container(
//             height: 100.0,
//             width: 100.0,
//             color: Colors.blue,
//           ),
// ),
//         Transform.rotate(
//           angle: 1.0,
//           origin: Offset(50.0, 50.0),
//           child: Container(
//             height: 100.0,
//             width: 100.0,
//             color: Colors.blue,
//           ),
//         ),
//         new Padding(
//           padding: new EdgeInsets.all(40.0),
//           child: new SpeedOMeter(
//               start: 1,
//               end: 1000,
//               highlightStart: (20.0),
//               highlightEnd: (20.0),
//               themeData: somTheme,
//               eventObservable: this.eventObservable),
//         ),
//       ],
//     ));
//   }
// }
