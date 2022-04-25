import 'package:classnine/Registration_Form/RegistrationDesign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyReg_Form());
  
}
class MyReg_Form extends StatelessWidget {
  const MyReg_Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        body:MyReg_Form_design() ,
      )),
    );
  }
}
