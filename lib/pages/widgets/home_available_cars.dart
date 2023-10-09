import 'package:flutter/material.dart';
import 'package:rentcar_app/shared/theme.dart';

class HomeAvailableCars extends StatelessWidget {
  final String imageUrl;
  final String carName;
  final String price;
  final String rating;
  final VoidCallback? onTap;

  const HomeAvailableCars({
    super.key,
    required this.imageUrl,
    required this.carName,
    required this.price,
    required this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Orientation orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 260,
        // width: MediaQuery.of(context).size.width * 0.35,
        // height: MediaQuery.of(context).size.height * 0.29,
        margin: const EdgeInsets.only(bottom: 8, right: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(5),
                bottom: Radius.circular(5),
              ),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Text(
              carName,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 15),
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                      size: 18,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      rating,
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: bold),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '(100+ Reviews)',
                      style: greyTextStyle.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: bold),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '/day',
                      style: greyTextStyle.copyWith(fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
