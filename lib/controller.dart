import 'package:flutter/material.dart';
import 'package:sales_rep/screens/account_details.dart';
import 'package:sales_rep/screens/calendar.dart';
import 'package:sales_rep/screens/customer_details.dart';
import 'package:sales_rep/screens/homepage.dart';
import 'package:sales_rep/screens/login_screen.dart';
import 'package:sales_rep/screens/orders.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalVariable{
  static Widget Navigationdrawerr(BuildContext context) {
    return Drawer(
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Jash',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'jashshah123@gmail.com',
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
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('My Account'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Account_details()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_bag,
            ),
            title: const Text('My Orders'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Orders()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_outline_sharp,
            ),
            title: const Text('Customers'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Customer_details()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.calendar_month,
            ),
            title: const Text('Events '),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CalendarApp()));
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
          ListTile(
            leading: Icon(
              Icons.logout,
            ),
            title: const Text('Log Out'),
            onTap: () {
              logOut(context);
            },
          ),
        ],
      ),
    );
  }

  static logOut(context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text("Are you sure want to logout?"),
            actions: [
              MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              MaterialButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.clear();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text("Ok"))
            ],
          );
        });
  }
}
