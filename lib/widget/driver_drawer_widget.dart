import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikabooking/driver_screen/buy_package_screen.dart';
import 'package:nikabooking/driver_screen/cash_out_screen.dart';
import 'package:nikabooking/driver_screen/driver_history_screen.dart';
import 'package:nikabooking/driver_screen/driver_home_screen.dart';
import 'package:nikabooking/driver_screen/driver_setting_screen.dart';
import 'package:nikabooking/driver_screen/package_history_screen.dart';
import 'package:nikabooking/screen/notification_screen.dart';
import 'package:nikabooking/screen/select_language_screen.dart';
import 'package:nikabooking/widget/date_time_widget.dart';

class DriverDrawerWidget extends StatelessWidget {
  const DriverDrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        "assets/images/driver.jpg",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Aron Buttler',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '0.00',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                DateTimeWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DriverHomeScreen(),
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
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'home'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
                  builder: (context) => BuyPackageScreen(),
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
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'e-Wallet'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
                  builder: (context) => DriverHistoryScreen(),
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
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'history'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
                  builder: (context) => PackageHistoryScreen(),
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
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'package_history'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
                  builder: (context) => NotificationScreen(),
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
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'notification'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
            onTap: () {},
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.local_taxi,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'subscription'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DriverSettingScreen(),
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
                    Icons.settings,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'setting'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
                  builder: (context) => CashOutScreen(),
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
                    Icons.monetization_on,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'cash_out'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectLanguage(),
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
                    Icons.logout,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'logout'.tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ), //Emergency
          SizedBox(
            height: 40,
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
            ),
          )
        ],
      ),
    );
  }
}
