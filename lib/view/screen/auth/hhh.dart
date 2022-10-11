// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';

// class MyCustomWidget extends StatefulWidget {
//   @override
//   _MyCustomWidgetState createState() => _MyCustomWidgetState();
// }

// class _MyCustomWidgetState extends State<MyCustomWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: DefaultTextStyle(
//           style: TextStyle(fontSize: 30),
//           child: AnimatedTextKit(
//             animatedTexts: [
//               WavyAnimatedText('Hello World!'),
//               WavyAnimatedText('Look at the waves.'),
//             ],
//             repeatForever: true,
//             isRepeatingAnimation: true,
//           ),
//         ),
//       ),
//     );
//   }
// }3

//=========================================================

// import 'dart:async';
// import 'package:flutter/material.dart';

// class MyCustomWidget extends StatefulWidget {
//   @override
//   _MyCustomWidgetState createState() => _MyCustomWidgetState();
// }

// class _MyCustomWidgetState extends State<MyCustomWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => AnimatingBg1(),
//               ),
//             );
//           },
//           child: Text('VIEW ANIMATING BACKGROUND'),
//         ),
//       ),
//     );
//   }
// }

// class AnimatingBg1 extends StatefulWidget {
//   @override
//   _AnimatingBg1State createState() => _AnimatingBg1State();
// }

// class _AnimatingBg1State extends State<AnimatingBg1>
//     with TickerProviderStateMixin {
//   List<Color> colorList = [
//     Color(0xff171B70),
//     Color(0xff410D75),
//     Color(0xff032340),
//     Color(0xff050340),
//     Color(0xff2C0340),
//   ];
//   List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
//   int index = 0;
//   Color bottomColor = Color(0xff092646);
//   Color topColor = Color(0xff410D75);
//   Alignment begin = Alignment.bottomCenter;
//   Alignment end = Alignment.topCenter;

//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       Duration(microseconds: 0),
//       () {
//         setState(
//           () {
//             bottomColor = Color(0xff33267C);
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(seconds: 2),
//       onEnd: () {
//         setState(
//           () {
//             index = index + 1;
//             bottomColor = colorList[index % colorList.length];
//             topColor = colorList[(index + 1) % colorList.length];
//           },
//         );
//       },
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: begin,
//           end: end,
//           colors: [bottomColor, topColor],
//         ),
//       ),
//     );
//   }
// }
//=============================================================

// import 'package:flutter/material.dart';

// class MyCustomWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(brightness: Brightness.dark),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => AnimatingBg(),
//               ),
//             );
//           },
//           child: Text('View Animated Background'),
//         ),
//       ),
//     );
//   }
// }

// class AnimatingBg extends StatefulWidget {
//   @override
//   _AnimatingBgState createState() => _AnimatingBgState();
// }

// class _AnimatingBgState extends State<AnimatingBg>
//     with TickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();

//     _bc = AnimationController(
//       duration: const Duration(seconds: 7),
//       vsync: this,
//     )..repeat();
//     ba = CurvedAnimation(parent: _bc, curve: Curves.easeIn);
//   }

//   Animation<double> ba;

//   AnimationController _bc;

//   AlignmentTween aT =
//       AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
//   AlignmentTween aB =
//       AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);

//   Animatable<Color> darkBackground = TweenSequence<Color>(
//     [
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: smalt.withOpacity(.8),
//           end: oldRose.withOpacity(.8),
//         ),
//       ),
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: oldRose.withOpacity(.8),
//           end: smalt.withOpacity(.8),
//         ),
//       ),
//     ],
//   );

//   Animatable<Color> normalBackground = TweenSequence<Color>(
//     [
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: smalt.withOpacity(.6),
//           end: oldRose.withOpacity(.6),
//         ),
//       ),
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: oldRose.withOpacity(.6),
//           end: smalt.withOpacity(.6),
//         ),
//       ),
//     ],
//   );

//   Animatable<Color> lightBackground = TweenSequence<Color>(
//     [
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: smalt.withOpacity(.4),
//           end: oldRose.withOpacity(.4),
//         ),
//       ),
//       TweenSequenceItem(
//         weight: .5,
//         tween: ColorTween(
//           begin: oldRose.withOpacity(.4),
//           end: smalt.withOpacity(.4),
//         ),
//       ),
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     double _h = MediaQuery.of(context).size.height;
//     return AnimatedBuilder(
//       animation: ba,
//       builder: (context, child) {
//         return Scaffold(
//           body: Container(
//             width: _w,
//             height: _h,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: aT.evaluate(ba),
//                 end: aB.evaluate(ba),
//                 colors: [
//                   darkBackground.evaluate(ba),
//                   normalBackground.evaluate(ba),
//                   lightBackground.evaluate(ba),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// Color  smalt = Color(0xff121856);
// Color oldRose = Color(0xffD23756);

//==============================================

// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:ui';

// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               'Suppose this is an app in your Ph_a\'s Screen page.',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 17,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             OpenContainer(
//               closedBuilder: (_, openContainer) {
//                 return Container(
//                   height: 80,
//                   width: 80,
//                   child: Center(
//                     child: Text(
//                       'App Logo',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               openColor: Colors.white,
//               closedElevation: 20,
//               closedShape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               transitionDuration: Duration(milliseconds: 700),
//               openBuilder: (_, closeContainer) {
//                 return SecondPage();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatefulWidget {
//   @override
//   _SecondPageState createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   bool _a = false;
//   bool _b = false;
//   bool _c = false;
//   bool _d = false;
//   bool _e = false;
//   bool _f = false;
//   bool _g = false;
//   bool _h = true;

//   final TextStyle initialStyle = TextStyle(
//     fontSize: 30,
//     color: Colors.black,
//     fontWeight: FontWeight.w600,
//     wordSpacing: 2,
//   );

//   final TextStyle finalStyle = TextStyle(
//     fontSize: 30,
//     color: Colors.white,
//     fontWeight: FontWeight.w600,
//     wordSpacing: 2,
//   );

//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(milliseconds: 500), () {
//       setState(() {
//         _g = true;
//         _a = true;
//         _h = !_h;
//       });
//     });
//     Timer(Duration(seconds: 1), () {
//       setState(() {
//         _b = true;
//         _h = !_h;
//       });
//     });
//     Timer(Duration(milliseconds: 1500), () {
//       setState(() {
//         _c = true;
//         _h = !_h;
//       });
//     });
//     Timer(Duration(seconds: 2), () {
//       setState(() {
//         _d = true;
//         _h = !_h;
//       });
//     });
//     Timer(Duration(milliseconds: 2500), () {
//       setState(() {
//         _e = true;
//         _h = !_h;
//       });
//     });
//     Timer(Duration(seconds: 3), () {
//       setState(() {
//         _f = true;
//         _h = !_h;
//         _g = false;
//       });
//     });
//     Timer(Duration(milliseconds: 4000), () {
//       Navigator.of(context).pushReplacement(
//         ThisIsFadeRoute(
//           route: ThirdPage(),
//           page: Text('/login'),
//         ),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Stack(
//         children: [
//           Center(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 2500),
//               curve: Curves.fastLinearToSlowEaseIn,
//               height: _a ? _height : 0,
//               width: _a ? _width : 0,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(_a ? 0 : 99),
//               ),
//             ),
//           ),
//           Center(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 2500),
//               curve: Curves.fastLinearToSlowEaseIn,
//               height: _b ? _height : 0,
//               width: _b ? _width : 0,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(_b ? 0 : 99),
//               ),
//             ),
//           ),
//           Center(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 2500),
//               curve: Curves.fastLinearToSlowEaseIn,
//               height: _c ? _height : 0,
//               width: _c ? _width : 0,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(_c ? 0 : 99),
//               ),
//             ),
//           ),
//           Center(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 2500),
//               curve: Curves.fastLinearToSlowEaseIn,
//               height: _d ? _height : 0,
//               width: _d ? _width : 0,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(_d ? 0 : 99),
//               ),
//             ),
//           ),
//           Center(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 2500),
//               curve: Curves.fastLinearToSlowEaseIn,
//               height: _e ? _height : 0,
//               width: _e ? _width : 0,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(_e ? 0 : 99),
//               ),
//             ),
//           ),
//           Center(
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 2200),
//               curve: Curves.fastLinearToSlowEaseIn,
//               height: _f ? _height : 0,
//               width: _f ? _width : 0,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(_f ? 0 : 99),
//               ),
//             ),
//           ),
//           Center(
//             child: _g
//                 ? AnimatedDefaultTextStyle(
//                     style: _h ? initialStyle : finalStyle,
//                     duration: Duration(seconds: 2),
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     child: Text("APP NAME"),
//                   )
//                 : SizedBox(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ThisIsFadeRoute extends PageRouteBuilder {
//   final Widget page;
//   final Widget route;

//   ThisIsFadeRoute({required this.page, required this.route})
//       : super(
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               page,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: route,
//           ),
//         );
// }

// class ThirdPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('HOME PAGE'),
//           centerTitle: true,
//           brightness: Brightness.dark,
//           backgroundColor: Colors.black),
//       body: Center(
//         child: Text(
//           "APP HOME PAGE",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }
//===================================================================

// import 'dart:async';
// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';

// class MyCustomWidget extends StatefulWidget {
//   @override
//   _MyCustomWidgetState createState() => _MyCustomWidgetState();
// }

// class _MyCustomWidgetState extends State<MyCustomWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               'Suppose this is an app in your Phone\'s Screen page.',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 17,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             OpenContainer(
//               closedBuilder: (_, openContainer) {
//                 return Container(
//                   height: 80,
//                   width: 80,
//                   child: Center(
//                     child: Text(
//                       'App Logo',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               openColor: Colors.white,
//               closedElevation: 20,
//               closedShape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               transitionDuration: Duration(milliseconds: 700),
//               openBuilder: (_, closeContainer) {
//                 return SecondScreen();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatefulWidget {
//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   bool _a = false;

//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(milliseconds: 700), () {
//       setState(() {
//         _a = !_a;
//       });
//     });
//     Timer(Duration(milliseconds: 2000), () {
//       Navigator.of(context)
//           .pushReplacement(SlideTransitionAnimation(SecondPage()));
//     });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           AnimatedContainer(
//             duration: Duration(milliseconds: 2000),
//             curve: Curves.fastLinearToSlowEaseIn,
//             width: _a ? _width : 0,
//             height: _height,
//             color: Colors.black,
//           ),
//           Center(
//             child: Text(
//               'APP\'s NAME',
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 30,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SlideTransitionAnimation extends PageRouteBuilder {
//   final Widget page;

//   SlideTransitionAnimation(this.page)
//       : super(
//             pageBuilder: (context, animation, anotherAnimation) => page,
//             transitionDuration: Duration(milliseconds: 2000),
//             transitionsBuilder: (context, animation, anotherAnimation, child) {
//               animation = CurvedAnimation(
//                 curve: Curves.fastLinearToSlowEaseIn,
//                 parent: animation,
//               );
//               return SlideTransition(
//                 position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
//                     .animate(animation),
//                 textDirection: TextDirection.rtl,
//                 child: page,
//               );
//             });
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('HOME PAGE'),
//           centerTitle: true,
//           brightness: Brightness.dark,
//           backgroundColor: Colors.black),
//       body: Center(
//         child: Text(
//           "APP HOME PAGE",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }

//=================================================

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Splash Ripple Effect',
//       home: HomePage(),
//     ),
//   );
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//     ),
//   );
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   late AnimationController firstRippleController;
//   late AnimationController secondRippleController;
//   late AnimationController thirdRippleController;
//   late AnimationController centerCircleController;
//   late Animation<double> firstRippleRadiusAnimation;
//   late Animation<double> firstRippleOpacityAnimation;
//   late Animation<double> firstRippleWidthAnimation;
//   late Animation<double> secondRippleRadiusAnimation;
//   late Animation<double> secondRippleOpacityAnimation;
//   late Animation<double> secondRippleWidthAnimation;
//   late Animation<double> thirdRippleRadiusAnimation;
//   late Animation<double> thirdRippleOpacityAnimation;
//   late Animation<double> thirdRippleWidthAnimation;
//   late Animation<double> centerCircleRadiusAnimation;

//   @override
//   void initState() {
//     firstRippleController = AnimationController(
//       vsync: this,
//       duration: Duration(
//         seconds: 2,
//       ),
//     );

//     firstRippleRadiusAnimation = Tween<double>(begin: 0, end: 150).animate(
//       CurvedAnimation(
//         parent: firstRippleController,
//         curve: Curves.ease,
//       ),
//     )
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           firstRippleController.repeat();
//         } else if (status == AnimationStatus.dismissed) {
//           firstRippleController.forward();
//         }
//       });

//     firstRippleOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
//       CurvedAnimation(
//         parent: firstRippleController,
//         curve: Curves.ease,
//       ),
//     )..addListener(
//         () {
//           setState(() {});
//         },
//       );

//     firstRippleWidthAnimation = Tween<double>(begin: 10, end: 0).animate(
//       CurvedAnimation(
//         parent: firstRippleController,
//         curve: Curves.ease,
//       ),
//     )..addListener(
//         () {
//           setState(() {});
//         },
//       );

//     secondRippleController = AnimationController(
//       vsync: this,
//       duration: Duration(
//         seconds: 2,
//       ),
//     );

//     secondRippleRadiusAnimation = Tween<double>(begin: 0, end: 150).animate(
//       CurvedAnimation(
//         parent: secondRippleController,
//         curve: Curves.ease,
//       ),
//     )
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           secondRippleController.repeat();
//         } else if (status == AnimationStatus.dismissed) {
//           secondRippleController.forward();
//         }
//       });

//     secondRippleOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
//       CurvedAnimation(
//         parent: secondRippleController,
//         curve: Curves.ease,
//       ),
//     )..addListener(
//         () {
//           setState(() {});
//         },
//       );

//     secondRippleWidthAnimation = Tween<double>(begin: 10, end: 0).animate(
//       CurvedAnimation(
//         parent: secondRippleController,
//         curve: Curves.ease,
//       ),
//     )..addListener(
//         () {
//           setState(() {});
//         },
//       );

//     thirdRippleController = AnimationController(
//       vsync: this,
//       duration: Duration(
//         seconds: 2,
//       ),
//     );

// thirdRippleRadiusAnimation = Tween<double>(begin: 0, end: 150).animate(
//       CurvedAnimation(
//         parent: thirdRippleController,
//         curve: Curves.ease,
//       ),
//     )
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           thirdRippleController.repeat();
//         } else if (status == AnimationStatus.dismissed) {
//           thirdRippleController.forward();
//         }
//       });

//     thirdRippleOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
//       CurvedAnimation(
//         parent: thirdRippleController,
//         curve: Curves.ease,
//       ),
//     )..addListener(
//         () {
//           setState(() {});
//         },
//       );

//     thirdRippleWidthAnimation = Tween<double>(begin: 10, end: 0).animate(
//       CurvedAnimation(
//         parent: thirdRippleController,
//         curve: Curves.ease,
//       ),
//     )..addListener(
//         () {
//           setState(() {});
//         },
//       );

//     centerCircleController =
//         AnimationController(vsync: this, duration: Duration(seconds: 1));

//     centerCircleRadiusAnimation = Tween<double>(begin: 35, end: 50).animate(
//       CurvedAnimation(
//         parent: centerCircleController,
//         curve: Curves.fastOutSlowIn,
//       ),
//     )
//       ..addListener(
//         () {
//           setState(() {});
//         },
//       )
//       ..addStatusListener(
//         (status) {
//           if (status == AnimationStatus.completed) {
//             centerCircleController.reverse();
//           } else if (status == AnimationStatus.dismissed) {
//             centerCircleController.forward();
//           }
//         },
//       );

//     firstRippleController.forward();
//     Timer(
//       Duration(milliseconds: 765),
//       () => secondRippleController.forward(),
//     );

//     Timer(
//       Duration(milliseconds: 1050),
//       () => thirdRippleController.forward(),
//     );

//     centerCircleController.forward();

//     super.initState();
//   }

//   @override
//   void dispose() {
//     firstRippleController.dispose();
//     secondRippleController.dispose();
//     thirdRippleController.dispose();
//     centerCircleController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff312b47),
//       body: Center(
//         child: CustomPaint(
//           painter: MyPainter(
//             firstRippleRadiusAnimation.value,
//             firstRippleOpacityAnimation.value,
//             firstRippleWidthAnimation.value,
//             secondRippleRadiusAnimation.value,
//             secondRippleOpacityAnimation.value,
//             secondRippleWidthAnimation.value,
//             thirdRippleRadiusAnimation.value,
//             thirdRippleOpacityAnimation.value,
//             thirdRippleWidthAnimation.value,
//             centerCircleRadiusAnimation.value,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyPainter extends CustomPainter {
//   final double firstRippleRadius;
//   final double firstRippleOpacity;
//   final double firstRippleStrokeWidth;
//   final double secondRippleRadius;
//   final double secondRippleOpacity;
//   final double secondRippleStrokeWidth;
//   final double thirdRippleRadius;
//   final double thirdRippleOpacity;
//   final double thirdRippleStrokeWidth;
//   final double centerCircleRadius;

//   MyPainter(
//       this.firstRippleRadius,
//       this.firstRippleOpacity,
//       this.firstRippleStrokeWidth,
//       this.secondRippleRadius,
//       this.secondRippleOpacity,
//       this.secondRippleStrokeWidth,
//       this.thirdRippleRadius,
//       this.thirdRippleOpacity,
//       this.thirdRippleStrokeWidth,
//       this.centerCircleRadius);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Color myColor = Color(0xff653ff4);

//     Paint firstPaint = Paint();
//     firstPaint.color = myColor.withOpacity(firstRippleOpacity);
//     firstPaint.style = PaintingStyle.stroke;
//     firstPaint.strokeWidth = firstRippleStrokeWidth;

//     canvas.drawCircle(Offset.zero, firstRippleRadius, firstPaint);

// Paint secondPaint = Paint();
//     secondPaint.color = myColor.withOpacity(secondRippleOpacity);
//     secondPaint.style = PaintingStyle.stroke;
//     secondPaint.strokeWidth = secondRippleStrokeWidth;

//     canvas.drawCircle(Offset.zero, secondRippleRadius, secondPaint);

//     Paint thirdPaint = Paint();
//     thirdPaint.color = myColor.withOpacity(thirdRippleOpacity);
//     thirdPaint.style = PaintingStyle.stroke;
//     thirdPaint.strokeWidth = thirdRippleStrokeWidth;

//     canvas.drawCircle(Offset.zero, thirdRippleRadius, thirdPaint);

//     Paint fourthPaint = Paint();
//     fourthPaint.color = myColor;
//     fourthPaint.style = PaintingStyle.fill;

//     canvas.drawCircle(Offset.zero, centerCircleRadius, fourthPaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

//=================================================

// import 'dart:async';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: HomePage(),
//       title: "Circular-Loading-Animation",
//     ),
//   );
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.light,
//     ),
//   );
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//   late AnimationController firstController;
//   late Animation<double> firstAnimation;

//   late AnimationController secondController;
//   late Animation<double> secondAnimation;

//   @override
//   void initState() {
//     super.initState();

//     firstController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//     firstAnimation = Tween<double>(begin: -pi, end: pi).animate(firstController)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           firstController.repeat();
//         } else if (status == AnimationStatus.dismissed) {
//           firstController.forward();
//         }
//       });

//     secondController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//     secondAnimation = Tween<double>(begin: -1, end: -4).animate(
//         CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           secondController.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           secondController.forward();
//         }
//       });

//     firstController.forward();
//     secondController.forward();
//   }

//   @override
//   void dispose() {
//     firstController.dispose();
//     secondController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SizedBox(
//           height: 100,
//           width: 100,
//           child: CustomPaint(
//             painter: MyCustomPainter(
//               firstAnimation.value,
//               secondAnimation.value,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyCustomPainter extends CustomPainter {
//   final double startAngle;
//   final double sweepAngle;

//   MyCustomPainter(this.startAngle, this.sweepAngle);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint myCircle = Paint()
//       ..color = Color(0xffCFCDF6)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 10;

//     canvas.drawCircle(
//       Offset(size.width * .5, size.height * .5),
//       size.width * .5,
//       myCircle,
//     );

//     Paint myArc = Paint()
//       ..color = Color(0xff420097)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 6
//       ..strokeCap = StrokeCap.round;

//     canvas.drawArc(
//       Rect.fromLTRB(0, 0, size.width, size.height),
//       startAngle,
//       sweepAngle,
//       false,
//       myArc,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
//================================================

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      title: 'Water-Flow-Animation',
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController firstController;
  late Animation<double> firstAnimation;

  late AnimationController secondController;
  late Animation<double> secondAnimation;

  late AnimationController thirdController;
  late Animation<double> thirdAnimation;

  late AnimationController fourthController;
  late Animation<double> fourthAnimation;

  @override
  void initState() {
    super.initState();

    firstController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    firstAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
        CurvedAnimation(parent: firstController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          firstController.forward();
        }
      });

    secondController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    secondAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
        CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          secondController.forward();
        }
      });

    thirdController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    thirdAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
        CurvedAnimation(parent: thirdController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          thirdController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          thirdController.forward();
        }
      });

    fourthController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    fourthAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
        CurvedAnimation(parent: fourthController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          fourthController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          fourthController.forward();
        }
      });

    Timer(Duration(seconds: 2), () {
      firstController.forward();
    });

    Timer(Duration(milliseconds: 1600), () {
      secondController.forward();
    });

    Timer(Duration(milliseconds: 800), () {
      thirdController.forward();
    });

    fourthController.forward();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    fourthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff2B2C56),
      body: Stack(
        children: [
          Center(
            child: Text('50 %',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    wordSpacing: 3,
                    color: Colors.white.withOpacity(.7)),
                textScaleFactor: 7),
          ),
          CustomPaint(
            painter: MyPainter(
              firstAnimation.value,
              secondAnimation.value,
              thirdAnimation.value,
              fourthAnimation.value,
            ),
            child: SizedBox(
              height: size.height,
              width: size.width,
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double firstValue;
  final double secondValue;
  final double thirdValue;
  final double fourthValue;

  MyPainter(
    this.firstValue,
    this.secondValue,
    this.thirdValue,
    this.fourthValue,
  );

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xff3B6ABA).withOpacity(.8)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, size.height / firstValue)
      ..cubicTo(size.width * .4, size.height / secondValue, size.width * .7,
          size.height / thirdValue, size.width, size.height / fourthValue)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
