import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custometext extends StatelessWidget {
  String text;
  double? textsize;
  FontWeight? fontWeight;
  Color? color;

  Custometext(
      {Key? key,
      required this.text,
      this.textsize,
      this.fontWeight,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color ?? Theme.of(context).primaryColor,
          fontSize: textsize ?? 20,
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}

class CustometextTittle extends StatelessWidget {
  String text;
  double? textsize;
  FontWeight? fontWeight;
  Color? color;

  CustometextTittle(
      {Key? key,
      required this.text,
      this.textsize,
      this.fontWeight,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color ?? Theme.of(context).primaryColor,
          fontSize: textsize ?? 20,
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}
