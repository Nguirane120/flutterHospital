import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Setting",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/pp.avif"),
            ),
            title: Text(
              "Doctor Name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
            ),
            subtitle: Text("profile"),
          ),
          Divider(
            height: 50,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.person,
                color: Colors.blue,
                size: 30,
              ),
            ),
            title: Text("Profile"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.notifications_on_outlined,
                color: Colors.deepPurple,
                size: 30,
              ),
            ),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.indigo.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.indigo,
                size: 30,
              ),
            ),
            title: Text("Privacy"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.settings_suggest_outlined,
                color: Colors.green,
                size: 30,
              ),
            ),
            title: Text("General"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.orange.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
            title: Text("About Us"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Divider(
            height: 40,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.redAccent.shade100, shape: BoxShape.circle),
              child: Icon(
                Icons.logout,
                color: Colors.redAccent,
                size: 30,
              ),
            ),
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
