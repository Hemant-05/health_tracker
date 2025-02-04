import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/start_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotificationEnabled = false;
  bool isReceiveEmailUpdatesEnabled = false;
  bool isSpecialOffersEnabled = false;
  bool isPromoDiscountsEnabled = false;

  Future<void> _reauthenticateAndDelete() async {
    // Re-authenticate the user before account deletion
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;

    if (user != null) {
      try {
        // Ask for credentials to reauthenticate (you can ask for email/password, or use another method)
        // For example, let's prompt for password to reauthenticate:
        String password =
            'user_password_here'; // This should come from the user input
        AuthCredential credential = EmailAuthProvider.credential(
          email: user.email!,
          password: password,
        );

        await user.reauthenticateWithCredential(credential);
        await user.delete();
        Navigator.of(context).pop(); // Close the dialog
        // Optionally navigate to a different screen after deletion (e.g., logout screen)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account deleted successfully.')),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == "requires-recent-login") {
          // Handle recent login required scenario
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Please log in again to delete your account.')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${e.message}')),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('An unexpected error occurred.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const ListTile(
            leading: Icon(Iconsax.notification, size: 30),
            title: Text(
              'Notification Settings',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SwitchListTile(
                  title: const Text('Enable Notifications',
                      style: TextStyle(fontSize: 18)),
                  value: isNotificationEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      isNotificationEnabled = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('Receive Email Alerts',
                      style: TextStyle(fontSize: 18)),
                  value: isReceiveEmailUpdatesEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      isReceiveEmailUpdatesEnabled = value;
                    });
                  },
                ),
                SwitchListTile(
                    title: const Text('Special Offers',
                        style: TextStyle(fontSize: 18)),
                    value: isSpecialOffersEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        isSpecialOffersEnabled = value;
                      });
                    }),
                SwitchListTile(
                  title: const Text('Promo & Discounts',
                      style: TextStyle(fontSize: 18)),
                  value: isPromoDiscountsEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      isPromoDiscountsEnabled = value;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Delete Account'),
                      content: const Text(
                          'Are you sure you want to delete your account? This action cannot be undone.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              User? user = FirebaseAuth.instance.currentUser;
                              if (user == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('User is not signed in')),
                                );
                                return;
                              }
                              await FirebaseAuth.instance.currentUser!.delete();
                              await FirebaseAuth.instance.signOut();
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const StartScreen()),
                                (route) => false, // Remove all previous routes
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Account deleted successfully.')),
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == "requires-recent-login") {
                                await _reauthenticateAndDelete();
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Error: ${e.message}')),
                                );
                              }
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('An unexpected error occurred.')),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.primary,
                          ),
                          child: const Text('Delete'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              child: const Text(
                'Delete Account',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
