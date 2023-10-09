import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/models/car_model.dart';
import 'package:rentcar_app/pages/widgets/buttons.dart';
import 'package:rentcar_app/shared/theme.dart';

class DetailPage extends StatefulWidget {
  final CarModel carModel;
  const DetailPage({super.key, required this.carModel});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late List<dynamic> imageCarousel = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      imageCarousel.add(widget.carModel.carImages!.carImage1.toString());
      imageCarousel.add(widget.carModel.carImages!.carImage2.toString());
      imageCarousel.add(widget.carModel.carImages!.carImage3.toString());
      imageCarousel.add(widget.carModel.carImages!.carImage4.toString());
      imageCarousel.add(widget.carModel.carImages!.carImage5.toString());
      imageCarousel.add(widget.carModel.carImages!.carImage6.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          header(),
          contentTitle(context),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(thickness: 0.5, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          contentCarInfo(),
          const SizedBox(height: 25),
          contentCarSpecs(),
          const SizedBox(height: 90),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.all(10),
        child: CustomFilledButton(
          title: 'Rent Now !',
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/success-page', (route) => false);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget indicator(int index) {
    return Container(
      width: currentIndex == index ? 24 : 6,
      height: 6,
      margin: const EdgeInsets.symmetric(
        horizontal: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex == index ? blueColor : const Color(0xffc4c4c4),
      ),
    );
  }

  Widget header() {
    int index = -1;
    return Column(
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            CarouselSlider(
              items: imageCarousel
                  .map(
                    (image) => Image.network(
                      image,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  height: 300,
                  viewportFraction: 1.0,
                  // enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageCarousel.map((e) {
                      index++;
                      return indicator(index);
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget contentTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.carModel.carName.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: false,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                      size: 18,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      widget.carModel.rating.toString(),
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
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                icFavorite,
                width: 24,
                color:
                    widget.carModel.isLove == true ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget contentCarInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Car Info',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 400) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // Price
                      children: [
                        Icon(
                          Icons.paid,
                          color: blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.carModel.price.toString(),
                          style: blackTextStyle.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.air,
                          color: blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Air Conditioning',
                          style: blackTextStyle.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.carModel.carInfo!.transmision.toString(),
                          style: blackTextStyle.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${widget.carModel.carInfo!.passanger} passanger",
                          style: blackTextStyle.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.local_gas_station,
                          color: blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.carModel.carInfo!.fuelType.toString(),
                          style: blackTextStyle.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          color: blueColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.carModel.year.toString(),
                          style: blackTextStyle.copyWith(fontSize: 15),
                        )
                      ],
                    ),
                  ],
                );
              } else {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // Price
                          children: [
                            Icon(
                              Icons.paid,
                              color: blueColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.carModel.price.toString(),
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.air,
                              color: blueColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Air Conditioning',
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: blueColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.carModel.carInfo!.transmision.toString(),
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: blueColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "${widget.carModel.carInfo!.passanger} passanger",
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.local_gas_station,
                              color: blueColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.carModel.carInfo!.fuelType.toString(),
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.date_range,
                              color: blueColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.carModel.year.toString(),
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget cardCardSpecs(String title, String value, String subTitle) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: whiteColor,
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: greyTextStyle.copyWith(fontSize: 15),
          ),
          Text(
            value,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
          ),
          Text(
            subTitle,
            style: greyTextStyle.copyWith(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget contentCarSpecs() {
    // double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Car Specs',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 300) {
                return Column(
                  children: [
                    cardCardSpecs("Max Power",
                        widget.carModel.carSpec!.maxPower.toString(), "hp"),
                    const SizedBox(height: 15),
                    cardCardSpecs("0-60 mph",
                        widget.carModel.carSpec!.timeSpeed.toString(), "sec."),
                    const SizedBox(height: 15),
                    cardCardSpecs("Top Speed",
                        widget.carModel.carSpec!.topSpeed.toString(), "mph"),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardCardSpecs("Max Power",
                        widget.carModel.carSpec!.maxPower.toString(), "hp"),
                    cardCardSpecs("0-60 mph",
                        widget.carModel.carSpec!.timeSpeed.toString(), "sec."),
                    cardCardSpecs("Top Speed",
                        widget.carModel.carSpec!.topSpeed.toString(), "mph"),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
