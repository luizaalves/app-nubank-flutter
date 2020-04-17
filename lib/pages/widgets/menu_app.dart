import 'package:flutter/material.dart';
import 'package:nubank/pages/widgets/item_menu.dart';
import 'package:nubank/pages/widgets/menu_info.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child:  AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height*0.55,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InfoMenu(
                    percent1: "60%",
                    title: "Maturidade",
                  ),
                  SizedBox(width: 50),
                  InfoMenu(
                    percent1: "20%",
                    title: "Conformidade",
                  ),
                ],
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(
                        iconData: Icons.ac_unit,
                        title: 'Titulo',
                      ),
                      ItemMenu(
                        iconData: Icons.access_alarm,
                        title: 'Titulo',
                      ),
                      ItemMenu(
                        iconData: Icons.accessible,
                        title: 'Titulo',
                      ),
                      ItemMenu(
                        iconData: Icons.ac_unit,
                        title: 'Titulo',
                      ),
                      ItemMenu(
                        iconData: Icons.ac_unit,
                        title: 'Titulo',
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}