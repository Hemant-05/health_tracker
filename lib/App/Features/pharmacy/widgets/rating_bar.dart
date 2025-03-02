import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PharmacyRatingBar extends StatelessWidget {
  const PharmacyRatingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 25.0,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      onRatingUpdate: (rating) {},
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
  }
}
