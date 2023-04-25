import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../model/modalclass.dart';
import 'login_screen.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwController = TextEditingController();
  TextEditingController _confirmpwController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  String token = "";
  int? id;
  bool _secure = true;
  String name = "";
  String email = "";
  List<DataModal> datamodal= [];
  Color eye1 = Colors.grey;
  Color eye2= Colors.grey;

  void signup(String username, password,name,email, phoneNo) async {
    try {
      http.Response response = await http
          .post(Uri.parse("http://192.168.238.163:8000/api/signup/"), body: {
        "username": username,
        "password": password,
        "first_name": name,
        "phone_no": phoneNo,
        "email" : email
        ,
      });
      var data = jsonDecode(response.body);
      print("status = ${response.statusCode}");
      if (response.statusCode == 201) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
        print("successfully");
      } else if (data["Status"] == null) {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("ERROR!"),
                content: Text("User Already Exist!"),
                actions: [
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ok"))
                ],
              );
            });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet:Container(
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account ?"),
            TextButton(onPressed: (){
              Navigator.pop(context);
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }, child: Text("Login",style: TextStyle(color: Colors.blue),))
          ],
        ),
      ) ,
      body: Padding(
        padding:  EdgeInsets.only(top: height/21.875),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                   IconButton(onPressed: (){
                     Navigator.pop(context);
                   }, icon: Icon(Icons.keyboard_backspace_outlined,color: Colors.black,size: height/29.166,))
                ],
              ),
             SizedBox(
               height: height/29.166,
             ) ,
              Text("Let's get started!",style: TextStyle(fontSize: width/16.33,fontWeight: FontWeight.bold),),
              SizedBox(
                height: height/218.75,
              ),
              Text("Create a GradeCheck account to get all features"),
              SizedBox(
                height: height/43.75,
              ),
              Padding(
                padding:  EdgeInsets.only(top:height/43.75,left:  width/13.066,right:  width/13.066),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(0.0),
                      ),
                      borderSide: new BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height/43.75,left:  width/13.066,right:  width/13.066),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email),

                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(0.0),
                      ),
                      borderSide: new BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height/43.75,left:  width/13.066,right:  width/13.066),
                child: TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: "Phone number",
                    prefixIcon: Icon(Icons.phone_android),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(0.0),
                      ),
                      borderSide: new BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height/43.75,left:  width/13.066,right:  width/13.066),
                child: TextField(
                  obscureText: _secure,
                  controller: _pwController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye,color: eye1,),onPressed: (){
                      setState(() {
                        _secure = !_secure;
                        eye1 = Colors.blue;
                      });
                    },),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(0.0),
                      ),
                      borderSide: new BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height/43.75,left:  width/13.066,right:  width/13.066),
                child: TextField(
                  controller: _confirmpwController,
                  obscureText: _secure,
                  decoration: InputDecoration(
                    labelText: "Confirm password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye),color: eye2,onPressed: (){
                      setState(() {
                        eye2 = Colors.blue;
                        _secure = !_secure;
                      });
                    },),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(0.0),
                      ),
                      borderSide: new BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height/43.75,left:  width/13.066,right:  width/13.066),
                child: Container(
                  decoration:BoxDecoration(
                      color: Color(0xFF0275d8),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  height: height/17.5,
                  width: MediaQuery.of(context).size.width/2,
                  child: MaterialButton(
                    onPressed: (){
                      signup(_emailController.text , _confirmpwController.text,_nameController.text,_emailController.text,_phoneController.text);
                    },child: Text("Register",style: TextStyle(fontSize: width/17.8181,fontWeight: FontWeight.bold),),),
                ),
              ),
              SizedBox(
                height: height/5,
              ),
              Divider(
                height: 2,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
