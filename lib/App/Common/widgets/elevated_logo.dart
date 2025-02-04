import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Utils/Constants/ImageStrings.dart';

class ElevatedLogo extends StatelessWidget {
  const ElevatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(ImageStrings.appLogoLight, height: 150);
  }
}
