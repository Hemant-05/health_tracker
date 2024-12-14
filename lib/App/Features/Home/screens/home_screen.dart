import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Features/Home/widgets/icon_button.dart';
import 'package:health_tracker/App/Features/Messages/Screens/notification_screen.dart';
import 'package:health_tracker/App/Features/Profile/screens/edit_profile_screen.dart';
import 'package:health_tracker/App/Features/filter_screen.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';
import 'package:health_tracker/App/Utils/LocalStorage/LocalData.dart';
import '../widgets/categories_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MyIconButton(IconsString.notificationIcon,(){
                  MyHelperFunctions.navigateToScreen(context, NotificationScreen());
                },context),
                MyIconButton(IconsString.settingsIcon, () {
                },context),
                MyIconButton(IconsString.searchIcon, () {},context),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Align(
                      child: SvgPicture.asset(IconsString.editIcon),
                    ),
                    MyIconButton(IconsString.userIcon, () {
                      MyHelperFunctions.navigateToScreen(context, const EditProfileScreen());
                    },context),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: MySizes.defaultSpace,
                vertical: MySizes.defaultSpace / 2),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyColors.primary),
                    ),
                    Text(
                      'See all',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: MyColors.primary),
                    )
                  ],
                ),
                const Divider(thickness: 1, color: MyColors.secondary),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    categoriesIcon(
                        context, IconsString.blankHeartIcon, 'Favorite'),
                    categoriesIcon(
                        context, IconsString.stethescopeIcon, 'Doctors'),
                    categoriesIcon(
                        context, IconsString.medicinsIcon, 'Pharmacy'),
                    categoriesIcon(
                        context, IconsString.specialtiesIcon, 'Specialties'),
                    categoriesIcon(context, IconsString.recordIcon, 'Record'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 250,
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.defaultSpace,
                  vertical: MySizes.defaultSpace / 2),
              color: MyColors.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Schedule',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: MyColors.white),
                      ),
                      Text(
                        'See all',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: MyColors.white),
                      )
                    ],
                  ),
                  const Divider(thickness: 1, color: MyColors.white),
                  const ListTile(
                    textColor: MyColors.white,
                    title: Text('For Full body check up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    subtitle: Text('Dr. Raman Gupta'),
                    trailing: Text('11-12-2024'),
                    style: ListTileStyle.list,
                  ),
                  const ListTile(
                    textColor: MyColors.white,
                    title: Text('For Eye check up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    subtitle: Text('Dr. Daksh Sharma'),
                    trailing: Text('15-06-2025'),
                    style: ListTileStyle.list,
                  ),
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
                Text(
                  'Specialties',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: MyColors.primary),
                ),
                const Divider(thickness: 1, color: MyColors.secondary),
                SizedBox(
                  height: 250,
                  child: GridView.builder(
                    itemCount: LocalData.specialtiesList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      Specialties data = LocalData.specialtiesList[index];
                      return Container(
                        margin: const EdgeInsets.all(5),
                        // padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: MyColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(data.icon,height: 40,),
                            const SizedBox(height: 10,),
                            Text(data.name,
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyColors.white))
                          ],
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
    );
  }
}
