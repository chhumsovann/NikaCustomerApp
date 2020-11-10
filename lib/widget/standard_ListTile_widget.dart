import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StandardListTile extends StatelessWidget {
  final IconData leading;
  final IconData trailing;
  final String title;
  final Function action;

  const StandardListTile(
      {Key key, this.leading, this.trailing, this.title, this.action})
      : super(key: key);
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            leading: Icon(
              leading,
              color: Colors.white,
            ),
            trailing: Icon(
              trailing,
              color: Colors.white,
              size: 14,
            ),
            onTap: action,
          ),
        ),
        Divider(),
      ],
    );
  }
}
