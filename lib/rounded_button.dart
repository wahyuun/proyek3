import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnText;
  final Function onBtnPressed;

  const RoundedButton(
    {Key? key, required this.btnText, required this.onBtnPressed})
    : super(key: key);
  @override  
  Widget build(BuildContext context){
    return Material(
      elevation: 10,
      color: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: MaterialButton(
        onPressed: (){
          onBtnPressed();
      },
      minWidth: 320,
      height: 40,
      child: Text (
        btnText,
        style: TextStyle(color: Colors.white, fontSize: 20 ),
      ),
      ),
    );
  }
}