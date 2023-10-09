class CarImagesModel {
  String? carImage1;
  String? carImage2;
  String? carImage3;
  String? carImage4;
  String? carImage5;
  String? carImage6;

  CarImagesModel({
    this.carImage1,
    this.carImage2,
    this.carImage3,
    this.carImage4,
    this.carImage5,
    this.carImage6,
  });

  factory CarImagesModel.fromJson(Map<String, dynamic> json) => CarImagesModel(
        carImage1: json["car_image_1"],
        carImage2: json["car_image_2"],
        carImage3: json["car_image_3"],
        carImage4: json["car_image_4"],
        carImage5: json["car_image_5"],
        carImage6: json["car_image_6"],
      );

  Map<String, dynamic> toJson() => {
        "car_image_1": carImage1,
        "car_image_2": carImage2,
        "car_image_3": carImage3,
        "car_image_4": carImage4,
        "car_image_5": carImage5,
        "car_image_6": carImage6,
      };
}
