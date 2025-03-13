import 'package:flutter/material.dart';
class fristContainer extends StatelessWidget {
  final String? image;
  final String? title;
  const fristContainer({
    super.key,
    required this.image,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(6),),

        ),
      Positioned(
        right: 5,
        left: 5,
        bottom: 15,
        child: SizedBox(
            height: 50,
            width: 300,
            child: Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)
              )),
      )
      ],
    );
  }
}