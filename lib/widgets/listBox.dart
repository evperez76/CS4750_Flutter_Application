import 'package:flutter/material.dart';

class ListBox extends StatelessWidget {
  const ListBox( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25,),
      child: ListTile(
        onTap: () {
          print('Clicked on Item Button');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.indigo[400],
        leading: Icon(Icons.check_box_rounded, color: Colors.white,),
        title: Text(
          '',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            decoration: TextDecoration.lineThrough,
          ),
        )

      ),
      );
  }
}