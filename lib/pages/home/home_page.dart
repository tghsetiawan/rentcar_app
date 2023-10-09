import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/cars_data.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/models/car_model.dart';
import 'package:rentcar_app/models/user_model.dart';
import 'package:rentcar_app/pages/widgets/forms.dart';
import 'package:rentcar_app/pages/widgets/home_available_cars.dart';
import 'package:rentcar_app/pages/widgets/home_top_brand_item.dart';
import 'package:rentcar_app/shared/theme.dart';
import 'package:rentcar_app/utils/detail_car_arg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool isLoading = true;
  late SharedPreferences sharedPrefs;
  late UserModel? userModel;
  late List<CarModel> carModelMost = [];
  late List<CarModel> carModelNew = [];

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      setState(() {
        sharedPrefs = value;
      });

      String? dataUser = sharedPrefs.getString('auth_user');
      String resultString = dataUser ?? "Default Value";

      userModel = UserModel.fromJson(jsonDecode(resultString));

      setState(() {
        carModelNew =
            carsData.where((element) => element.category == "new").toList();
        carModelMost =
            carsData.where((element) => element.category == "most").toList();
      });

      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: light2BackgroundColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back,',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          isLoading ? "-" : userModel!.fullName,
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              imagaAvatar,
                            ),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: whiteColor,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check_circle,
                                color: greenColor,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 170) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 18));
                      } else if (constraints.maxWidth < 230) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 20));
                      } else if (constraints.maxWidth < 270) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 20));
                      } else if (constraints.maxWidth < 300) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 24));
                      } else if (constraints.maxWidth < 380) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 26));
                      } else if (constraints.maxWidth < 400) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 30));
                      } else if (constraints.maxWidth < 450) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 30));
                      } else if (constraints.maxWidth < 500) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 34));
                      } else if (constraints.maxWidth < 600) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 36));
                      } else if (constraints.maxWidth < 700) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 42));
                      } else if (constraints.maxWidth < 800) {
                        return Text('Find your favorite vehicle.',
                            textAlign: TextAlign.start,
                            style: blackTextStyle.copyWith(fontSize: 46));
                      } else {
                        return Text('Find your favorite vehicle.',
                            style: blackTextStyle.copyWith(fontSize: 52));
                      }
                    },
                  ),
                ),
                const SizedBox(height: 10),
                CustomFormFieldSearch(
                  title: 'Search vehicle..',
                  isShowTitle: false,
                  onFieldSubmitted: (p0) {},
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                buildTopBrand(context),
                const SizedBox(height: 20),
                buildTextNewCars(context),
                responsiveCardNewCars(),
                // buildNewCardCars(context),
                const SizedBox(height: 20),
                // builMostPopularCars(context),
                buildTextMostCars(context),
                responsiveCardMostCars(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget builText() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Text(
        'Find your favorite vehicle.',
        style: blackTextStyle.copyWith(fontSize: 36),
      ),
    );
  }

  Widget buildTopBrand(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Brands',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'See All',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeTopBrandItem(
                  iconUrl: logoBMW,
                  title: '',
                  onTap: () {},
                ),
                HomeTopBrandItem(
                  iconUrl: logoHonda,
                  title: '',
                  onTap: () {},
                ),
                HomeTopBrandItem(
                  iconUrl: logoMazda,
                  title: '',
                  onTap: () {},
                ),
                HomeTopBrandItem(
                  iconUrl: logoMercedes,
                  title: '',
                  onTap: () {},
                ),
                HomeTopBrandItem(
                  iconUrl: logoMitsubishi,
                  title: '',
                  onTap: () {},
                ),
                HomeTopBrandItem(
                  iconUrl: logoToyota,
                  title: '',
                  onTap: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget responsiveCardNewCars() {
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    debugPrint(orientation.toString());
    debugPrint("height of screen :  ${height.toString()}");

    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint("width of screen :  ${constraints.maxWidth.toString()}");

        // HEIGHT 300
        if (height < 300) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.5);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.5);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.5);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.5);
            } else if (constraints.maxWidth < 1200) {
              return buildNewCardCars(context, 0.5);
            } else {
              return buildNewCardCars(context, 0.5);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.5);
            } else {
              return buildNewCardCars(context, 0.5);
            }
          }
        }
        // HEIGHT 500
        else if (height < 500) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.48);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.48);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.48);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.48);
            } else if (constraints.maxWidth < 1200) {
              return buildNewCardCars(context, 0.48);
            } else {
              return buildNewCardCars(context, 0.4);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.48);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.48);
            } else {
              return buildNewCardCars(context, 0.48);
            }
          }
        }
        // HEIGHT 700
        else if (height < 700) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.4);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.4);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.4);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.4);
            } else if (constraints.maxWidth < 1200) {
              return buildNewCardCars(context, 0.4);
            } else {
              return buildNewCardCars(context, 0.4);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.4);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.4);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.4);
            } else {
              return buildNewCardCars(context, 0.45);
            }
          }
        }
        // HEIGHT 900
        else if (height < 900) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 1200) {
              return buildNewCardCars(context, 0.35);
            } else {
              return buildNewCardCars(context, 0.35);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.35);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.35);
            } else {
              return buildNewCardCars(context, 0.35);
            }
          }
        }
        // HEIGHT 1200
        else if (height < 1200) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 1200) {
              return buildNewCardCars(context, 0.33);
            } else {
              return buildNewCardCars(context, 0.33);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildNewCardCars(context, 0.36);
            } else if (constraints.maxWidth < 500) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 700) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 900) {
              return buildNewCardCars(context, 0.33);
            } else if (constraints.maxWidth < 1200) {
              return buildNewCardCars(context, 0.33);
            } else {
              return buildNewCardCars(context, 0.33);
            }
          }
        } else {
          return buildNewCardCars(context, 0.33);
        }
      },
    );
  }

  Widget responsiveCardMostCars() {
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    // debugPrint(orientation.toString());
    // debugPrint("height of screen :  ${height.toString()}");

    return LayoutBuilder(
      builder: (context, constraints) {
        // debugPrint("width of screen :  ${constraints.maxWidth.toString()}");

        // HEIGHT 300
        if (height < 300) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.5);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.5);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.5);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.5);
            } else if (constraints.maxWidth < 1200) {
              return buildMostCardCars(context, 0.5);
            } else {
              return buildMostCardCars(context, 0.5);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.5);
            } else {
              return buildMostCardCars(context, 0.5);
            }
          }
        }
        // HEIGHT 500
        else if (height < 500) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.48);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.48);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.48);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.48);
            } else if (constraints.maxWidth < 1200) {
              return buildMostCardCars(context, 0.48);
            } else {
              return buildMostCardCars(context, 0.4);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.48);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.48);
            } else {
              return buildMostCardCars(context, 0.48);
            }
          }
        }
        // HEIGHT 700
        else if (height < 700) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.4);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.4);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.4);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.4);
            } else if (constraints.maxWidth < 1200) {
              return buildMostCardCars(context, 0.4);
            } else {
              return buildMostCardCars(context, 0.4);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.4);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.4);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.4);
            } else {
              return buildMostCardCars(context, 0.45);
            }
          }
        }
        // HEIGHT 900
        else if (height < 900) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 1200) {
              return buildMostCardCars(context, 0.35);
            } else {
              return buildMostCardCars(context, 0.35);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.35);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.35);
            } else {
              return buildMostCardCars(context, 0.35);
            }
          }
        }
        // HEIGHT 1200
        else if (height < 1200) {
          if (orientation == Orientation.landscape) {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 1200) {
              return buildMostCardCars(context, 0.33);
            } else {
              return buildMostCardCars(context, 0.33);
            }
          } else {
            if (constraints.maxWidth < 300) {
              return buildMostCardCars(context, 0.36);
            } else if (constraints.maxWidth < 500) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 700) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 900) {
              return buildMostCardCars(context, 0.33);
            } else if (constraints.maxWidth < 1200) {
              return buildMostCardCars(context, 0.33);
            } else {
              return buildMostCardCars(context, 0.33);
            }
          }
        } else {
          return buildMostCardCars(context, 0.33);
        }
      },
    );
  }

  Widget buildNewCardCars(BuildContext context, double dheight) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * dheight,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: carModelNew.length,
            itemBuilder: (context, index) {
              late CarModel carModel = carModelNew[index];
              return HomeAvailableCars(
                imageUrl: carModel.carInfo!.imgUrl.toString(),
                carName: carModel.carName.toString(),
                price: carModel.price.toString(),
                rating: carModel.rating.toString(),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/detail',
                    arguments: DetailCarArg(carModelNew[index]),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildMostCardCars(BuildContext context, double dheight) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * dheight,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: carModelMost.length,
            itemBuilder: (context, index) {
              late CarModel carModel = carModelMost[index];
              return HomeAvailableCars(
                imageUrl: carModel.carInfo!.imgUrl.toString(),
                carName: carModel.carName.toString(),
                price: carModel.price.toString(),
                rating: carModel.rating.toString(),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/detail',
                    arguments: DetailCarArg(carModelMost[index]),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildTextNewCars(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'New Cars',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        Text(
          'See All',
          style: blueTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }

  Widget buildTextMostCars(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Most Popular',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        Text(
          'See All',
          style: blueTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }
}
