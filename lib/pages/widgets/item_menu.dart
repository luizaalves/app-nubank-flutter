import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData iconData;
  final String title;

  const ItemMenu({Key key, this.iconData, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7,color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54)
        )
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(iconData),
                SizedBox(width: 15),
                Text(title,style: TextStyle(fontSize: 12)),
              ],
            ),
            Icon(Icons.chevron_right, size:15)
          ],
        ),
        
        onPressed: (){

        }
      ),
    );
  }
}