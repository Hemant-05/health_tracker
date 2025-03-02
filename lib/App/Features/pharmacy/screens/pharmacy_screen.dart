import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/pharmacy/screens/pharmacy_profile.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/LocalStorage/pharmacy_data.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({super.key});

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140), // Adjust height
        child: AppBar(
          backgroundColor: MyColors.primary,
          // automaticallyImplyLeading: false, // Removes default back button
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Pharmacies",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                const Text(
                  "Find your Pharmacy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon:
                        const Icon(Icons.search, color: MyColors.primary),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: PharmacyData.pharmacyStores.length,
        itemBuilder: (context, index) {
          // Extract pharmacy data
          final pharmacy = PharmacyData.pharmacyStores[index];
          return InkWell(
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(pharmacy['image']),
                ),
                title: Text(
                  pharmacy['pharmacyName'],
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pharmacy['timing'],
                        style: const TextStyle(color: Colors.black)),
                    Text(pharmacy['address'],
                        style: const TextStyle(color: Colors.black)),
                  ],
                ),
                trailing: IconButton.outlined(
                    onPressed: () {
                      setState(() {
                        pharmacy['favourite'] = !pharmacy['favourite'];
                      });
                    },
                    icon: Icon(
                      pharmacy['favourite']
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: pharmacy['favourite'] ? Colors.red : Colors.grey,
                    )),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PharmacyProfile(
                            pharmacyName: pharmacy['pharmacyName'] ?? 'Unknown',
                            discription: pharmacy['discription'] ??
                                'No description available', // Note: Fix spelling if needed!
                            address:
                                pharmacy['address'] ?? 'No address available',
                            contact:
                                pharmacy['contact'] ?? 'No contact available',
                            timing: pharmacy['timing'] ?? 'No timing available',
                            map: pharmacy['map'] ??
                                'assets/images/default_map.png',
                            favourite: pharmacy['favourite'] ?? false,
                          )));
            },
          );
        },
      ),
    );
  }
}
