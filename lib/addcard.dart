import 'package:flutter/material.dart';

class Matchlist extends StatelessWidget {

  late final String name;
  late final Function() delete;
  Matchlist({required this.name,required this.delete});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 210,
      child: Card(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.greenAccent[200],
          child:Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name as String,
                  style:(
                      TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                      )
                  ),
                ),
                SizedBox(width: 10),
                IconButton(onPressed: delete, icon: Icon(Icons.delete), )
              ],
            ),
          )
      ),
    );
  }
}

