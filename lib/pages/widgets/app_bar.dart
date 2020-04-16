import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).padding.top, //tamanho do status bar do celular
          ),
          GestureDetector( //detector de click
            onTap: onTap,
              child: Container(
                color: Colors.purple[800],
                height: MediaQuery.of(context).size.height*0.20, //adaptar o app bar ao tamanho da tela do celular
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(//imagem, espaçamento, texto
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                          height: 35,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10,),
                        Text('Luiza',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Icon(!showMenu ? Icons.expand_more: Icons.expand_less) //clicou na tela? muda o icone
                  ],
                ),
          ),
        )
      ],
    );
  }
}