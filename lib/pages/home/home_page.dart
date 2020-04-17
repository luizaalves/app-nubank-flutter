import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nubank/pages/widgets/app_bar.dart';
import 'package:nubank/pages/widgets/docs_app.dart';
import 'package:nubank/pages/widgets/menu_app.dart';
import 'package:nubank/pages/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yposition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yposition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double bottomLimit = _screenHeight*.85;
    double topLimit = _screenHeight*.24;
    double middleLimit = bottomLimit+topLimit;
    middleLimit = middleLimit/2;

    if(_yposition==0) _yposition = topLimit;

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
                _yposition = _showMenu ? bottomLimit : topLimit;
              });
            },
          ),
          MenuApp(
            showMenu: _showMenu,
            top: _screenHeight*.2,
          ),
          PageViewApp( //os cards que deslizam horizontalmente
            showMenu: _showMenu,
              top: _yposition,//_showMenu ? _screenHeight*0.24 : _screenHeight*.75,
              onChanged: (index){ //esse index pega a pagina atual e muda o card
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (details){
                
                setState(() {
                  _yposition += details.delta.dy;
                  _yposition = _yposition < topLimit ? topLimit : _yposition;
                  _yposition = _yposition > bottomLimit ? bottomLimit : _yposition;
                  _yposition = _yposition > topLimit && _yposition < middleLimit ? bottomLimit : _yposition;
                  _yposition = _yposition >= middleLimit && _yposition<bottomLimit ? topLimit : _yposition;
                
                _showMenu = _yposition == topLimit ? false : true;
                  
                });
                
              }
            ),
          MyDocsApp(//a vizualização de em qual card está navegando atualmente
            currentIndex: _currentIndex,
            top: _screenHeight*.7,
            showMenu: _showMenu,
          )
        ],
      ),
    );
  }
}