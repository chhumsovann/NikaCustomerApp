import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:nikabooking/screen/saved_places_screen.dart';

class AddBalanceScreen extends StatefulWidget {
  @override
  _AddBalanceScreenState createState() => _AddBalanceScreenState();
}

class _AddBalanceScreenState extends State<AddBalanceScreen> {
//  String _value;
//  List<String> prices = ['\$ 10', '\$ 15', '\$ 50'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add_balance'.tr),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'select_a_top-up_value'.tr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),

//              Wrap(
//                children: prices.map((price) {
//                  return ChoiceChip(
//                    label: Text(
//                      'Item $price',
//                      style: TextStyle(
//                        color: Colors.white,
//                      ),
//                    ),
//                    selectedColor: Colors.black,
//                    selected: _value == price,
//                    onSelected: (bool selected) {
//                      setState(() {
//                        _value = selected ? price : null;
//                      });
//                    },
//                  );
//                }).toList(),
//              ),
              FormBuilderChoiceChip(
                attribute: "Pay",
                backgroundColor: Colors.black38,
                selectedColor: Colors.black,
                alignment: WrapAlignment.center,
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                spacing: 20,
                labelPadding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                options: [
                  FormBuilderFieldOption(child: Text("\$ 10"), value: "10"),
                  FormBuilderFieldOption(child: Text("\$ 15"), value: "15"),
                  FormBuilderFieldOption(child: Text("\$ 50"), value: "50"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 10),
                    child: Text(
                      'pay'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavedPlacesScreen(),
                      ),
                    );
                  },
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
