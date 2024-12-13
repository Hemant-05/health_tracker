import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';

class CameraIconButton extends StatelessWidget {
  const CameraIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: MyColors.primary,
      borderType: BorderType.Oval,
      dashPattern: const [MySizes.sm],
      strokeWidth: 1,
      child: InkWell(
        onTap: () {},
        child: const SizedBox(
          height: 100,
          width: 100,
          child: Icon(
            Icons.camera_alt_outlined,
            size: 40,
            color: MyColors.black,
          ),
        ),
      ),
    );
  }
}
