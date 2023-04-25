import 'package:flutter/material.dart';

import '../controller.dart';
import '../model/Global_variables.dart';

class Customer_details extends StatelessWidget {
  const Customer_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GlobalVariable.Navigationdrawerr(context),
      appBar: AppBar(
        title: Text("Hi , Jash"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text("Customer Details",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Card(
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.purple),
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
                            "assets/images/dp1.png",
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
                            "Chisom favour",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+1 7894567899887",
                            style: TextStyle(fontSize: 20),
                          ),
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
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.purple),
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
                            "assets/images/dp.jfif",
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
                            "jack favour",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+1 4546546546654",
                            style: TextStyle(fontSize: 20),
                          ),
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
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.purple),
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
                            "assets/images/dp1.png",
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
                            "john wavour",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+1 4546546546546",
                            style: TextStyle(fontSize: 20),
                          ),
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
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.purple),
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
                            "avel avour",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+1 6546546546546",
                            style: TextStyle(fontSize: 20),
                          ),
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
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.purple),
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
                            "assets/images/dp.jfif",
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
                            "Chisom favour",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+1 7894567899887",
                            style: TextStyle(fontSize: 20),
                          ),
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
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.purple
                  ),
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
                            "assets/images/dp1.png",
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
                            "John doe",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+1 5546546546545",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
