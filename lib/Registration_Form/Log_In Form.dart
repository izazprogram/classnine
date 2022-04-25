import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(

      appBar: AppBar(
        title: Text("My Log In  Page"),
      ),

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
               
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/izaz.png"), fit: BoxFit.fill),
                      shape: BoxShape.circle),
                ),
Text("Log_in Form",style: TextStyle(
  fontSize: 30,
),),
                SizedBox(height: 20.0,),
                Form(child:
                    Column(
                      children: [
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

                        ),
                      ],
                    )
                ),
                Center(
                  child: ElevatedButton( child: Text("Submit Here"),
                    onPressed: (){

                      Navigator.push(context,MaterialPageRoute(builder: (context) => LogIn()));
                    },),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
