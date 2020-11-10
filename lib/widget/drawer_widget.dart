import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikabooking/screen/emergency_screen.dart';
import 'package:nikabooking/screen/history_screen.dart';
import 'package:nikabooking/screen/home_screen.dart';
import 'package:nikabooking/screen/rate_us_screen.dart';
import 'package:nikabooking/screen/trip_details_screen.dart';
import 'package:nikabooking/screen/trip_invoice_screen.dart';
import 'package:nikabooking/screen/wallet_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/boy.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              accountName: Text(
                "James Stroke",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountEmail: Text(
                "+885 0963197285",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //home
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WalletScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'E-Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 138,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //E-Wallet
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoryScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.history,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'History',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 143,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //History
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TripInvoiceScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Schedule',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //Schedule
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RateUsScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //Notification
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TripDetailsScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Help Center',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //Help Center
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Setting',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 143,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //Setting
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmergencyScreen(),
                ),
              );
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Emergency Contacts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 58,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ), //Emergency
          Container(
            padding: EdgeInsets.fromLTRB(65, 0, 36, 0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 155,
                  ),
                  Text(
                    'Refer a Friend',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.double_arrow,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Divider(
              color: Colors.white,
            ),
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.copyright_outlined,
                color: Colors.white,
                size: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'CopyRight 2020',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
