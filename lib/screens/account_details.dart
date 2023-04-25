import 'package:flutter/material.dart';
import 'package:sales_rep/controller.dart';

import '../model/Global_variables.dart';

class Account_details extends StatelessWidget {
  Account_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          surfaceTintColor: Colors.black,
            child: GlobalVariable.Navigationdrawerr(context)),
        appBar: AppBar(
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.history,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/bg_pic.jfif",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "User Info",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/dp.jfif",
                        ),
                      ),
                      Positioned(
                          left: 60,
                          top: 60,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black,
                              )))
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Jash Shah",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Jashshah123@gmail.com",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("1234567897",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
