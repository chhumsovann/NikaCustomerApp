import 'package:flutter/material.dart';
import 'package:nikabooking/widget/drawer_widget.dart';

class EmergencyScreen extends StatefulWidget {
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
        centerTitle: true,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: DrawerWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/emergency.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Text(
                  'XLCabVI sents an SMS with your ride details to Emergency contacts when you top on the call button during trip.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'James ',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: '0963169752',
                  suffix: Container(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.radio_button_checked),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
