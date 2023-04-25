import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:sales_rep/model/Global_variables.dart';
import 'package:sales_rep/screens/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller.dart';
import '../model/modalclass.dart';
import 'homepage.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _pwController = TextEditingController();
  String token = "";
  bool _secure = true;
  Color eye = Colors.grey;
  void login<Data>(String username, password) async {
    print(username);
    print(password);
    try {
      http.Response response = await http.post(
        Uri.parse("http://192.168.238.163:8000/auth/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, dynamic>{"username": username, "password": password}),
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        print("response--${response.body}");
        var data = jsonDecode(response.body);
        print(data['token']);
          token = data["token"];
          GlobalVariables.token = token;
          SharedPreferences pref = await SharedPreferences.getInstance();
          await pref.setString('token', token.toString());
        // var data = jsonDecode(response.body);
        print("st : ${response.statusCode}");

        //AuthController.login(_loginUserData, context);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      } else if (response.statusCode == 400) {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("ERROR!"),
                content: Text("Incorrect Username or Password"),
                actions: [
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ok"))
                ],
              );
            });
      } else if (response.statusCode == 404) {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("ERROR!"),
                content: Text("User not found"),
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

  void checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? val = await pref.getString('token');
    if (val != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    }
  }
@override
  void initState() {
    checkLogin();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account ?"),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            }, child: Text("Register",style: TextStyle(color: Colors.blue),))
          ],
        ),),
      body: Padding(
        padding:  EdgeInsets.only(top: height/8.75),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.asset("assets/images/applogo.png",height: height/5.468,)),
              SizedBox(
                height: height/43.75,
              ),
              Text("Welcome back!",style: TextStyle(fontSize: width/16.33,fontWeight: FontWeight.bold),),
              SizedBox(
                height: height/218.75,
              ),
              Text("Log into your existing account of GradeCheck"),
              SizedBox(
                height: height/21.875,
              ),
              Padding(
                padding:  EdgeInsets.only(left: width/13.066,right:  width/13.066),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email Address",
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
                  controller: _pwController,
                  obscureText: _secure,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye),color: eye,onPressed: (){
                      setState(() {
                        _secure = !_secure;
                        eye = Colors.blue;
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
                 padding:  EdgeInsets.only(top:height/109.375,left: 220.0),
                 child: Text("Forgot password?",),
               ),
              Padding(
                padding:  EdgeInsets.only(left:  width/13.066,right:  width/13.066,top: height/29.166),
                child: Container(
                  decoration:BoxDecoration(
                      color: Color(0xFF0275d8),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  height: height/17.5,
                  width: MediaQuery.of(context).size.width/2,
                  child: MaterialButton(
                    onPressed: (){
                              login(_emailController.text, _pwController.text);
                    },child: Text("Login",style: TextStyle(fontSize: width/17.8181,fontWeight: FontWeight.bold),),),
                ),
              ),
              SizedBox(
                height: height/43.75,
              ),
              Text("Or connect using "),
              SizedBox(
                height: height/43.75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height/21.875,
                    width: width/3.01,
                    color: Color(0xFF4267B2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/fb4.png",height: height/29.166,),
                        Text("Facebook",style:TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Container(
                    height: height/21.875,
                    width: width/3.01,
                    color: Colors.red[400],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/google1.png",height: height/29.166,),
                        Text("Google",style:TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height/7.40,
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
