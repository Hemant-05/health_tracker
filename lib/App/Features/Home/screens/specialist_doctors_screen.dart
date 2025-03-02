import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Home/screens/doctor_profile_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

class SpecialistDoctorsScreen extends StatefulWidget {
  final List<Map<String, dynamic>> doctorsData;
  final String title;
  final String subTitle;
  const SpecialistDoctorsScreen(
      {super.key,
      required this.doctorsData,
      required this.title,
      required this.subTitle});

  @override
  State<SpecialistDoctorsScreen> createState() =>
      _SpecialistDoctorsScreenState();
}

class _SpecialistDoctorsScreenState extends State<SpecialistDoctorsScreen> {
  //
  void toggleFavorite(int index) {
    setState(() {
      widget.doctorsData[index]['fav'] = !widget.doctorsData[index]['fav'];
    });
  }

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
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Text(
                  widget.subTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search doctor',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget.doctorsData.isNotEmpty
            ? ListView.builder(
                itemCount: widget.doctorsData.length,
                itemBuilder: (context, index) {
                  final data = widget.doctorsData[index];
                  return InkWell(
                    child: ListTile(
                      leading: data['image'] != null
                          ? CircleAvatar(
                              backgroundImage: AssetImage(
                                  data['image']), // Wrap as AssetImage
                              radius: 34,
                            )
                          : const CircleAvatar(
                              radius: 40,
                              child: Icon(Icons.person),
                            ),
                      title: Text(
                        '${data['name']}',
                        style: const TextStyle(fontSize: 16.5),
                      ),
                      subtitle: Text('${data['specialist_in']}'),
                      trailing: GestureDetector(
                        onTap: () => toggleFavorite(index),
                        child: Icon(
                            data['fav']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: data['fav'] ? Colors.red : null),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DoctorProfileScreen(doctorData: data)));
                    },
                  );
                },
              )
            : const Center(
                child: Text('No doctors available for this specialty.')),
      ),
    );
  }
}
