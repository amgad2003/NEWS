import 'package:flutter/material.dart';
AppBar titleAppBar(){
  return AppBar(
  backgroundColor: Colors.transparent,
  centerTitle: true,
  title: Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text(
             'News',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold)
             ),
             Text(
              'Cloud',
               style: TextStyle(
                 color: Colors.amber,
                 fontWeight: FontWeight.bold)
             )
           ]
    ,)
    ,);
 }