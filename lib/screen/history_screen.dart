import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikabooking/widget/drawer_widget.dart';
import 'package:nikabooking/widget/item_history_widget.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: DrawerWidget(),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    ItemHistoryWidget(),
                    ItemHistoryWidgetOne(),
                    ItemHistoryWidgetTwo(),
                    ItemHistoryWidgetThree(),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Sep 21,2020',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
