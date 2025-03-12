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
    return Container(
      height: 150,
      width: 200,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: ListTile(
          title: Text(
            title!,
              style: TextStyle(
                  color: Colors.white)),
        ),
      ),
    );
  }
}