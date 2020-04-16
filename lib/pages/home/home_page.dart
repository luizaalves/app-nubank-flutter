

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nubank/pages/widgets/app_bar.dart';
import 'package:nubank/pages/widgets/card_app.dart';
import 'package:nubank/pages/widgets/docs_app.dart';
import 'package:nubank/pages/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800], //pra ficar um pouco mais escuro
      body: Stack( //empilha os objetos na tela da maneira que desejar
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar( //appBar da tela 
            showMenu: _showMenu,
            onTap: (){
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp( //os cards que deslizam horizontalmente
            top: _screenHeight*0.24,
            onChanged: (index){ //esse index pega a pagina atual e muda o card
              setState(() {
                _currentIndex = index;
              });
            },  
          ),
          MyDocsApp(currentIndex: _currentIndex,top: _screenHeight*.7)//a vizualização de em qual card está navegando atualmente
        ],
      ),
    );
  }
}