import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InfoMenu extends StatelessWidget {
  final String percent1;
  final String title;

  const InfoMenu({Key key, this.percent1, this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircularPercentIndicator(
            radius: 80.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 12.0,
            percent: 0.6,
            center: new Text(
              percent1, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.purple[500],
            progressColor: Colors.white,
          ),
       Text(title,style: TextStyle(fontSize: 20,color: Colors.white)),  
      ],
    );
  }
}