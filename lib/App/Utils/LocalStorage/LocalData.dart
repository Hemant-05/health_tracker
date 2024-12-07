import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';

class LocalData{
  static List<Specialties> specialtiesList = [
    Specialties(name: 'Cardiology', icon: IconsString.cardiologyIcon),
    Specialties(name: 'Dermatology', icon: IconsString.dermatologyIcon),
    Specialties(name: 'Medicine', icon: IconsString.medicineIcon),
    Specialties(name: 'Gynecology', icon: IconsString.gynecologyIcon),
    Specialties(name: 'Odontology', icon: IconsString.odontologyIcon),
    Specialties(name: 'Oncology', icon: IconsString.oncologyIcon),
    Specialties(name: 'Orthopedics', icon: IconsString.orthopedicsIcon),
    Specialties(name: 'Ophtamology', icon: IconsString.ophtamology),
  ];
}

class Specialties{
  final String name;
  final String icon;
  Specialties({required this.name, required this.icon});
}