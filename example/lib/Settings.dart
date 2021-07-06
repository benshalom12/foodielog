import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Account',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.circle_notifications_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.lock_open_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Permissions',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.contact_support_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Support',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.feedback_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Feedback',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.error_outline,
              color: Colors.black,
            ),
            label: Text(
              'About',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.privacy_tip_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Privacy Policy',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.article_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Terms Of Service',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.power_settings_new_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Logout',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
