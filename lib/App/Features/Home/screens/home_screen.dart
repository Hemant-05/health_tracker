import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Features/Appointment/screens/appointment_screen.dart';
import 'package:health_tracker/App/Features/Home/screens/specialist_doctors_screen.dart';
import 'package:health_tracker/App/Features/Home/widgets/icon_button.dart';
import 'package:health_tracker/App/Features/Messages/Screens/notification_screen.dart';
import 'package:health_tracker/App/Features/Profile/screens/profile_screen.dart';
import 'package:health_tracker/App/Features/pharmacy/screens/pharmacy_screen.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';
import 'package:health_tracker/App/Utils/LocalStorage/local_data.dart';
import 'package:health_tracker/App/Utils/LocalStorage/doctor_data.dart';
import 'package:health_tracker/services/auth_service.dart';
import '../widgets/categories_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> doctorsData = [];

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final String? profilePictureUrl = user?.photoURL;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 32,
                  height: 32,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileScreen()));
                      },
                      child: CircleAvatar(
                          radius: 30,
                          backgroundImage: (profilePictureUrl != null)
                              ? NetworkImage(profilePictureUrl)
                              : const AssetImage('assets/logo/userimage.png'))),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Hello \n"
                  "Intezar",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: MyIconButton(IconsString.notificationIcon, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationScreen()));
                      }, context),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.defaultSpace,
                  vertical: MySizes.defaultSpace / 2),
              child: Column(
                children: [
                  const Divider(thickness: 1.5, color: MyColors.secondary),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      categoriesIcon(
                          context, IconsString.medicinsIcon, 'Pharmacy', () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PharmacyScreen()));
                      }),
                      categoriesIcon(
                          context, IconsString.recordIcon, 'Appointments', () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AppointmentScreen()));
                      }),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 390,
              height: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.primary,
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.defaultSpace,
                  vertical: MySizes.defaultSpace / 2),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Schedule',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: MyColors.white),
                        ),
                      ],
                    ),
                    const Divider(thickness: 1.5, color: MyColors.white),
                    const ListTile(
                      textColor: MyColors.white,
                      title: Text(
                        'Dr. Raman Gupta',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: Text('Eye Specialist'),
                      trailing: Text(
                        '11-12-2024',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ListTileStyle.list,
                    ),
                    const ListTile(
                      textColor: MyColors.white,
                      title: Text(
                        'Dr. Dakh Sharma',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('General Doctor'),
                      trailing: Text(
                        '15-06-2025',
                        style: TextStyle(fontSize: 17.5),
                      ),
                      style: ListTileStyle.list,
                    ),
                    const Divider(thickness: 1.5, color: MyColors.white),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.defaultSpace,
                  vertical: MySizes.defaultSpace / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Specialist',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: MyColors.primary),
                      ),
                    ],
                  ),
                  const Divider(thickness: 1.5, color: MyColors.secondary),
                  SizedBox(
                    width: 390,
                    height: 344.1,
                    child: GridView.builder(
                      itemCount: Specialty.specialtiesList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        Specialty data = Specialty.specialtiesList[index];
                        return InkWell(
                          onTap: () {
                            doctorsData =
                                DoctorData.specialties[index]['doctors_list'];

                            MyHelperFunctions.navigateToScreen(
                              context,
                              SpecialistDoctorsScreen(
                                title: DoctorData.specialties[index]["title"],
                                subTitle: DoctorData.specialties[index]
                                    ["sub_title"],
                                doctorsData: List<Map<String, dynamic>>.from(
                                  DoctorData.specialties[index]["doctors_list"],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: MyColors.primary,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  data.icon,
                                  height: 40,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  data.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: MyColors.white),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
