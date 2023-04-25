import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}
int routerprice = 1599;
int wifiprice = 1999;
int earphoneprice = 299;
int switchprice = 1699;
int mouseprice = 699;
   int proq1 = 0;
   int proq2 = 0;
   int proq3 = 0;
   int proq4 = 0;
   int proq5 = 0;
    int total = 0;
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sales Rep Booking',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Info',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'name',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'mailaddres@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('My Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
              ),
              title: const Text('My Orders'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline_sharp,
              ),
              title: const Text('Customers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
              ),
              title: const Text('Shopping cart'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.analytics,
              ),
              title: const Text('Product Analysis'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Hello, Name",
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
                                  height: 35,
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
                                          proq1 == 0 ?proq1 = proq1 : total = total -routerprice ;
                                          proq1 == 0 ?proq1 = proq1 : proq1 = proq1 -1 ;
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
                                          proq1 = proq1 +1;
                                          total = total +routerprice;
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
                                  height: 130,
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
                                          proq2 == 0 ?proq2 = proq2 : total = total -wifiprice ;
                                          proq2 == 0 ?proq2 = proq2 : proq2 = proq2 -1;
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
                                          proq2 = proq2 +1;
                                          total = total +wifiprice;

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
                                  height: 100,
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
                                          proq3 == 0 ?proq3 = proq3 : total = total - mouseprice ;
                                          proq3 == 0 ?proq3 = proq3 : proq3 = proq3 -1;
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
                                          proq3 = proq3 +1;
                                          total = total +mouseprice;

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
                                  height: 68,
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
                                          proq4 == 0 ?proq4 = proq4 : total = total -switchprice ;
                                          proq4 == 0 ?proq4 = proq4 : proq4 = proq4 -1;
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
                                          proq4 = proq4 +1;
                                          total = total +switchprice;

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
                                  height: 100,
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
                                          proq5 == 0 ?proq5 = proq5 : total = total -earphoneprice;
                                          proq5 == 0 ?proq5 = proq5 : proq5 = proq5 -1;
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
                                          proq5 = proq5+1;
                                          total = total +earphoneprice;

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
          padding:  EdgeInsets.only(left: 20.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("total price : ",style: TextStyle(fontSize: 18),),
                  Text("$total",style: TextStyle(fontSize: 18),),
                ],
              ),
              MaterialButton(onPressed: (){},child: Text("Add to cart"),color: Colors.blue,)
            ],
          ),
        ),
      ),
    );
  }
}
