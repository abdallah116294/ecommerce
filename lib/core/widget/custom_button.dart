import 'package:flutter/material.dart';

class CustomButton extends  StatelessWidget {
   CustomButton({Key? key, this.action, this.style, this.width,this.onPressed }) : super(key: key);
   final String? action;
   final double?width;
  TextStyle? style;
 final  GestureTapCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(width:width ,decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.blue
    ),child: TextButton(onPressed: onPressed,child: Text(action!,style:style,),));
  }
}
