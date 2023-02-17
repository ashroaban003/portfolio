import 'package:flutter/material.dart';

class Animelist extends StatelessWidget {

   late final String name;
   late final Function() add;
   Animelist({required this.name,required this.add});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 220,
      child: Card(
        margin: EdgeInsets.fromLTRB(17, 17, 17, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
       color: Colors.white,
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
             IconButton(onPressed: add, icon: Icon(Icons.add), )
           ],
         ),
       )
      ),
    );
  }
}
