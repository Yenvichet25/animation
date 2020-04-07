import 'package:flutter/material.dart';

class ColorPageView {
  final dynamic colorname;

  ColorPageView({this.colorname});
}

List<ColorPageView> colors = [
  ColorPageView(colorname: Colors.red),
  ColorPageView(colorname: Colors.yellow),
  ColorPageView(colorname: Colors.cyan),
  ColorPageView(colorname: Colors.purple),
  ColorPageView(colorname: Colors.green),

];
 class ColorPages{
   final dynamic pagescolor;

  ColorPages({this.pagescolor});
 }
 List<ColorPages> pages=[
   ColorPages(pagescolor: Container(color:Colors.green)),
   ColorPages(pagescolor: Container(color:Colors.red)),
   ColorPages(pagescolor: Container(color:Colors.pink)),
   ColorPages(pagescolor: Container(color:Colors.green)),
   ColorPages(pagescolor: Container(color:Colors.cyan))
 
 ];

