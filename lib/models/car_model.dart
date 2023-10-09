import 'package:rentcar_app/models/car_images_model.dart';
import 'package:rentcar_app/models/car_info_model.dart';
import 'package:rentcar_app/models/car_spec_model.dart';

class CarModel {
  late int? id;
  late bool? isLove;
  late String? carName;
  late String? brand;
  late String? year;
  late String? category;
  late String? rating;
  late String? price;
  late CarInfoModel? carInfo;
  late CarSpecModel? carSpec;
  late CarImagesModel? carImages;

  CarModel({
    this.id,
    this.isLove,
    this.carName,
    this.brand,
    this.year,
    this.category,
    this.rating,
    this.price,
    this.carInfo,
    this.carSpec,
    this.carImages,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        id: json["id"],
        isLove: json["is_love"],
        carName: json["car_name"],
        brand: json["brand"],
        year: json["year"],
        category: json["category"],
        rating: json["rating"],
        price: json["price"],
        carInfo: json["car_info"] == null
            ? null
            : CarInfoModel.fromJson(json["car_info"]),
        carSpec: json["car_spec"] == null
            ? null
            : CarSpecModel.fromJson(json["car_spec"]),
        carImages: json["car_images"] == null
            ? null
            : CarImagesModel.fromJson(json["car_images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_love": isLove,
        "car_name": carName,
        "brand": brand,
        "year": year,
        "category": category,
        "rating": rating,
        "price": price,
        "car_info": carInfo?.toJson(),
        "car_spec": carSpec?.toJson(),
        "car_images": carImages?.toJson(),
      };
}
