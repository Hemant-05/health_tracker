import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/login_screen.dart';

import 'package:health_tracker/App/Features/Payment/screens/payment_method_screen.dart';
import 'package:health_tracker/App/Features/Profile/screens/edit_password_screen.dart';

import 'package:health_tracker/App/Features/Profile/screens/edit_profile_screen.dart';
import 'package:health_tracker/App/Features/Profile/screens/help_center_screen.dart';
import 'package:health_tracker/App/Features/Profile/screens/privacy_policy_screen.dart';
import 'package:health_tracker/App/Features/Profile/screens/settings_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/logo/userimage.png'),
                radius: 60,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hemant Sahu',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  SizedBox(width: 20),
                  Text('hemant@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
        toolbarHeight: 180,
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(14.0),
        children: [
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.person, size: 30),
            title: const Text(
              'Edit Profile',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditProfileScreen()));
            },
          ),
          // const SizedBox(height: 20),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Iconsax.money_change1, size: 30),
            title: const Text(
              'Payment Methods',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentMethodScreen()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.lock, size: 30),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyScreen()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Iconsax.password_check, size: 30),
            title: const Text(
              'Password Manager',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditPasswordScreen()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.settings, size: 30),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.help, size: 30),
            title: const Text(
              'Help & Support',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HelpCenterScreen()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.logout, size: 30),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              try {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInScreen()),
                  (route) => false,
                );
              } on Exception catch (e) {
                Fluttertoast.showToast(
                  msg: e.toString(),
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.SNACKBAR,
                  backgroundColor: MyColors.primary,
                  textColor: Colors.white,
                  fontSize: 18.0,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
