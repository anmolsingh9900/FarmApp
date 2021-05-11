import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Name',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'example@gmail.com',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/images/profilebg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('My Orders'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.add_location),
            title: Text('My Addresses'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Wallet'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('About Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.add_call),
            title: Text('Contact Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
