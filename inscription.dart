import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart' ;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'delayed_animation.dart';
import 'main.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
@override
Widget build (BuildContext context) {
return Scaffold (
extendBodyBehindAppBar: true,
appBar :AppBar( backgroundColor:Colors.transparent,
elevation : 0,
title: const Text ("Sign Up" , style: TextStyle(fontSize:24, fontWeight:FontWeight.bold),
),
),

);
}}