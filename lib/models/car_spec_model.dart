class CarSpecModel {
  late int? maxPower;
  late int? topSpeed;
  late double? timeSpeed;

  CarSpecModel({
    this.maxPower,
    this.topSpeed,
    this.timeSpeed,
  });

  factory CarSpecModel.fromJson(Map<String, dynamic> json) => CarSpecModel(
        maxPower: json["max_power"],
        topSpeed: json["top_speed"],
        timeSpeed: json["time_speed"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "max_power": maxPower,
        "top_speed": topSpeed,
        "time_speed": timeSpeed,
      };
}
