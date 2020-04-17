import 'package:flutter/material.dart';
import 'package:nubank/pages/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp({Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned( // qual posição a widget vai ficar no stack
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height*0.45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: BouncingScrollPhysics(), //efeito elastivo quando puxa lateralmente
          children: <Widget>[
            CardApp(),
            CardApp(),
            CardApp()                  
          ],
        ),
      ),
    );
  }
}