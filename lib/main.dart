import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                // Handle navigation to Home
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.dashboard,
              text: 'Dashboard',
              onTap: () {
                // Handle navigation to Dashboard
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.book,
              text: 'My Course',
              onTap: () {
                // Handle navigation to My Course
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.subscriptions,
              text: 'Subscription',
              onTap: () {
                // Handle navigation to Subscription
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.report_problem,
              text: 'Complain Box',
              onTap: () {
                // Handle navigation to Complain Box
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.notifications,
              text: 'Notice',
              onTap: () {
                // Handle navigation to Notice
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.account_circle,
              text: 'My Account',
              onTap: () {
                // Handle navigation to My Account
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            _createDrawerItem(
              icon: Icons.info,
              text: 'About Us',
              onTap: () {
                // Handle navigation to About Us
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.contact_phone,
              text: 'Contact Us',
              onTap: () {
                // Handle navigation to Contact Us
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.quiz,
              text: 'Quiz',
              onTap: () {
                // Handle navigation to Quiz
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.help,
              text: 'FAQs',
              onTap: () {
                // Handle navigation to FAQs
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.policy,
              text: 'Refund Policy',
              onTap: () {
                // Handle navigation to Refund Policy
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.description,
              text: 'Terms and Condition',
              onTap: () {
                // Handle navigation to Terms and Condition
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.headset_mic,
              text: 'Helpline',
              onTap: () {
                // Handle navigation to Helpline
                Navigator.of(context).pop();
              },
            ),
            _createDrawerItem(
              icon: Icons.share,
              text: 'Share',
              onTap: () {
                // Handle navigation to Share
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
