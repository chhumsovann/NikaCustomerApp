import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikabooking/widget/date_picker_widget.dart';
import 'package:nikabooking/widget/drawer_widget.dart';
import 'package:nikabooking/widget/item_history_widget.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('history'.tr),
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
              padding: const EdgeInsets.only(left: 12, right: 12, top: 70),
              child: Container(
                child: ListView(
                  children: <Widget>[
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
                    child: DatePickerWidget(),
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
