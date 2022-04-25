import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Log_In Form.dart';

class MyReg_Form_design extends StatefulWidget {
  @override
  State<MyReg_Form_design> createState() => _MyReg_Form_designState();
}

class _MyReg_Form_designState extends State<MyReg_Form_design> {
  //using TextField
  final _formKey = GlobalKey<FormState>();

  //icon change
  bool _securText = true;

  // all name data
  var name, email, phone, password;

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();


  _handleSignUpData(){
    if(_formKey.currentState!.validate()){

      _formKey.currentState!.save();

      print("Name is : ${this.name}");
      print("Email is : ${this.email}");
      print("Phone Number  is : ${this.phone}");
      print("Password is : ${this.password}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "My_Registration_Form",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Create Account",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Enter Your Name.Email and Password for sing_Up.sing?",style: TextStyle(
                      fontSize: 18
                    ),

                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyReg_Form_design() ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Already Create Account?",style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.green
                        ),),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(

                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.people),
                          labelText: "Enter Your Name",
                          focusColor: Colors.red.shade500,
                          border: OutlineInputBorder(),


                        ),

                        //data add system
                        validator: (value){
                          if(value!.isEmpty){
                            return ("Please Enter Your Name !!");

                          }
                        },
                        onSaved: (value){
                          this.name = value;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: "Enter Your email",
                            focusColor: Colors.red.shade500,
                            border: OutlineInputBorder(),
                            ),
                        validator: (value){
                          if(value!.isEmpty){
                            return ("Please Enter Your Name !!");

                          }
                        },
                        onSaved: (value){
                          this.name = value;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                            labelText: "Enter Your Phone Number",
                            suffixStyle:
                                TextStyle(fontSize: 30, color: Colors.black),
                            focusColor: Colors.red.shade500,
                            border: OutlineInputBorder(),
                            ),
                        validator: (value){
                          if(value!.isEmpty){
                            return ("Please Enter Your Phone !!");

                          }
                        },
                        onSaved: (value){
                          this.name = value;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: passwordController,
                        obscureText: _securText,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          labelText: "Enter Your Password",
                          focusColor: Colors.red.shade500,
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _securText ? Icons.remove_red_eye : Icons.security,
                            ),
                            onPressed: () {
                              setState(() {
                                _securText = !_securText;
                              });
                            },
                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return ("Please Enter Your password !!");

                          }
                        },
                        onSaved: (value){
                          this.name = value;
                        },
                      ),
                    ],
                  )),
            ),
            Center(
              child: ElevatedButton( child: Text("Submit Here"),
                onPressed: (){
                _handleSignUpData();
                Navigator.push(context,MaterialPageRoute(builder: (context) => LogIn()));
                },),
            )
          ],

        ),

      ),

    ));
  }
}
