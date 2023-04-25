import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller.dart';
import '../model/Global_variables.dart';
import '../model/modalclass.dart';
import 'login_screen.dart';

class Homepage extends StatefulWidget {
  Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

int routerprice = 1599;
int wifiprice = 1999;
int earphoneprice = 299;
int switchprice = 1699;
int mouseprice = 699;
List<DataModal> datamodal = [];
int proq1 = 0;
int proq2 = 0;
int proq3 = 0;
int proq4 = 0;
int proq5 = 0;
int total = 0;
String token = "";
String? firsrname;
String? lastname;
String? title;
String? organizationName;
String? phonenum;

Future<DataModal> Dataa() async {
  http.Response response = await http
      .get(Uri.parse("http://192.168.0.45:8000/api/login/"), headers: {
    HttpHeaders.authorizationHeader: "Token ${GlobalVariables.token}",
    HttpHeaders.contentTypeHeader: "application/json"
  });
  print(response.statusCode);
  print(response.body);
  var data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    for (Map<String, dynamic> index in data) {
      datamodal.add(DataModal.fromJson(index));
      firsrname = datamodal[0].fname.toString();
      lastname = datamodal[0].lname.toString();
      phonenum = datamodal[0].phoneNo.toString();
      print(firsrname);
      print(lastname);
      print(phonenum);

      return DataModal();
    }
  }
  return DataModal();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    gettoken();
    // TODO: implement initState
    super.initState();
  }

  Future<void> gettoken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    token = (await pref.getString('token'))!;
    print(token);
    Dataa();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.shopping_cart))
        ],
        centerTitle: true,
        title: const Text(
          'Sales Rep Booking',
        ),
      ),
      drawer: GlobalVariable.Navigationdrawerr(context),
      body: Padding(
        padding: EdgeInsets.only(top: 28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Hello,Jash",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "TOP SELLING PRODUCTS",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Card(
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/images/router.png",
                                  height: 20,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Router",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₹${routerprice}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq1 == 0
                                              ? proq1 = proq1
                                              : total = total - routerprice;
                                          proq1 == 0
                                              ? proq1 = proq1
                                              : proq1 = proq1 - 1;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      shape: CircleBorder(),
                                    ),
                                    Text(
                                      "$proq1",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq1 = proq1 + 1;
                                          total = total + routerprice;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      padding: EdgeInsets.all(2.0),
                                      shape: CircleBorder(),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Card(
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/images/wifi.png",
                                  height: 80,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Wi-fi",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₹${wifiprice} ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq2 == 0
                                              ? proq2 = proq2
                                              : total = total - wifiprice;
                                          proq2 == 0
                                              ? proq2 = proq2
                                              : proq2 = proq2 - 1;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      shape: CircleBorder(),
                                    ),
                                    Text(
                                      "$proq2",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq2 = proq2 + 1;
                                          total = total + wifiprice;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      padding: EdgeInsets.all(2.0),
                                      shape: CircleBorder(),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Card(
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/images/mouse.png",
                                  height: 70,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Mouse ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₹${mouseprice} ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq3 == 0
                                              ? proq3 = proq3
                                              : total = total - mouseprice;
                                          proq3 == 0
                                              ? proq3 = proq3
                                              : proq3 = proq3 - 1;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      shape: CircleBorder(),
                                    ),
                                    Text(
                                      "$proq3",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq3 = proq3 + 1;
                                          total = total + mouseprice;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      padding: EdgeInsets.all(2.0),
                                      shape: CircleBorder(),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Card(
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/images/switch.png",
                                  height: 50,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Switch",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₹${switchprice}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq4 == 0
                                              ? proq4 = proq4
                                              : total = total - switchprice;
                                          proq4 == 0
                                              ? proq4 = proq4
                                              : proq4 = proq4 - 1;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      shape: CircleBorder(),
                                    ),
                                    Text(
                                      "$proq4",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq4 = proq4 + 1;
                                          total = total + switchprice;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      padding: EdgeInsets.all(2.0),
                                      shape: CircleBorder(),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Card(
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/images/earphone.png",
                                  height: 77,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Earphone ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₹${earphoneprice} ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq5 == 0
                                              ? proq5 = proq5
                                              : total = total - earphoneprice;
                                          proq5 == 0
                                              ? proq5 = proq5
                                              : proq5 = proq5 - 1;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      shape: CircleBorder(),
                                    ),
                                    Text(
                                      "$proq5",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          proq5 = proq5 + 1;
                                          total = total + earphoneprice;
                                        });
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 40),
                                      ),
                                      padding: EdgeInsets.all(2.0),
                                      shape: CircleBorder(),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 60,
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "total price : ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "$total",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Add to cart"),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
