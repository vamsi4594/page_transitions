import 'package:f_page_transition/second_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Transition Animations'),),
      body: Container(
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            transitionButton('Left To Right', PageTransitionType.leftToRight),
            transitionButton('Right To Left', PageTransitionType.rightToLeft),
            transitionButton('Top To Bottom', PageTransitionType.topToBottom),
            transitionButton('Bottom To Top', PageTransitionType.bottomToTop),
            transitionButton('Normal Fade', PageTransitionType.fade),
            transitionButton('Left To Right With Fade', PageTransitionType.leftToRightWithFade),
            transitionButton('Right To Left With Fade', PageTransitionType.rightToLeftWithFade),
            customTransitionButton('Scale Transition', PageTransitionType.scale, Alignment.bottomCenter),
            customTransitionButton('Size Transition', PageTransitionType.size, Alignment.bottomCenter),
            customTransitionButton('Rotate Transition', PageTransitionType.rotate, Alignment.bottomCenter),
            joinedTransitionButton('Left To Right Joined', PageTransitionType.leftToRightJoined),
            joinedTransitionButton('Right To Left Joined', PageTransitionType.leftToRightJoined),
          ],
        ),
      ),
    );
  }
  Widget transitionButton(String title, PageTransitionType typeOfTransition){
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(PageTransition(
        child: SecondPage(),
        type: typeOfTransition,
      ),
      ),
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
    );
  }

  Widget customTransitionButton(String title, PageTransitionType typeOfTransition, Alignment alignment){
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(PageTransition(
        child: SecondPage(),
        type: typeOfTransition,
        alignment: alignment
      ),
      ),
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
    );
  }

  Widget joinedTransitionButton(String title, PageTransitionType typeOfTransition){
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(PageTransition(
          childCurrent: widget,
          duration: Duration(milliseconds: 600),
          reverseDuration: Duration(milliseconds: 600),
          type: typeOfTransition,
          child: SecondPage()
      ),
      ),
      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
    );
  }

}


