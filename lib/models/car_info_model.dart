class CarInfoModel {
  late int? passanger;
  late String? fuelType;
  late String? transmision;
  late String? imgUrl;

  CarInfoModel({
    this.passanger,
    this.fuelType,
    this.transmision,
    this.imgUrl,
  });

  factory CarInfoModel.fromJson(Map<String, dynamic> json) => CarInfoModel(
        passanger: json["passanger"],
        fuelType: json["fuel_type"],
        transmision: json["transmision"],
        imgUrl: json["img_url"],
      );

  Map<String, dynamic> toJson() => {
        "passanger": passanger,
        "fuel_type": fuelType,
        "transmision": transmision,
        "img_url": imgUrl,
      };
}
