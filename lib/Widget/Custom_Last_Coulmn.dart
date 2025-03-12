import 'package:flutter/material.dart';

class lastCoulmn extends StatelessWidget {
  final String? image;
  final String? title;
  final String? suTitle;
  const lastCoulmn({super.key, required this.image,required this.title,required this.suTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: 7,),
        ListTile(
          title: Text(
            title!,
            style: TextStyle(
                fontSize: 22)),
          subtitle: Text(
            suTitle!,
            style: TextStyle(
                fontSize: 14)
          ),
        ),
        SizedBox(height: 7,)
      ],
    );
  }
}