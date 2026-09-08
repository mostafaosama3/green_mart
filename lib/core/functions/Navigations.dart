import 'package:flutter/material.dart';

void Pushto(BuildContext context,Widget newscreen){
Navigator.push(context, MaterialPageRoute(builder:(context) => newscreen )
);
}