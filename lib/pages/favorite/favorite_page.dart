import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/cars_data.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/models/car_model.dart';
import 'package:rentcar_app/shared/theme.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late List<CarModel> carModelFavorite = [];
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  void initState() {
    super.initState();
    carModelFavorite =
        carsData.where((element) => element.isLove == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    Widget generateContainers(CarModel carModel) {
      return Container(
        margin: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          bottom: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: whiteColor,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                carModel.carInfo!.imgUrl.toString(),
                width: 120,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terrex Urban Low',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '\$143,98',
                    style: blackTextStyle,
                  ),
                ],
              ),
            ),
            Image.asset(
              icFavorite,
              width: 35,
              color: Colors.red,
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Cars'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: carModelFavorite.length,
        itemBuilder: (context, index) {
          return generateContainers(carModelFavorite[index]);
        },
      ),
    );
  }
}
