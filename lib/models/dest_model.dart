class DestinationModel {
  late String destinationName,
      rating,
      price,
      country,
      subCountry,
      imageCard,
      imageMini,
      imageContent,
      tag,
      desc,
      visitor;
  late int id;
  late bool isLove;
  late double lan, long;

  DestinationModel({
    required this.destinationName,
    required this.rating,
    required this.price,
    required this.country,
    required this.subCountry,
    required this.imageCard,
    required this.imageContent,
    required this.imageMini,
    required this.tag,
    required this.desc,
    required this.visitor,
    required this.id,
    required this.lan,
    required this.long,
    this.isLove = false,
  });

  DestinationModel.fromJson(Map<String, dynamic> json) {
    destinationName = json['destinationName'];
    rating = json['rating'];
    price = json['price'];
    country = json['country'];
    subCountry = json['subCountry'];
    imageCard = json['imageCard'];
    imageMini = json['imageMini'];
    tag = json['tag'];
    desc = json['desc'];
    visitor = json['visitor'];
    id = json['id'];
    isLove = json['isLove'];
    imageContent = json['imageContent'];
    lan = json['lan'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    return {
      'destinationName': destinationName,
      'rating': rating,
      'price': price,
      'country': country,
      'subCountry': subCountry,
      'imageCard': imageCard,
      'imageContent': imageContent,
      'imageMini': imageMini,
      'tag': tag,
      'desc': desc,
      'visitor': visitor,
      'id': id,
      'isLove': isLove,
      'lan': lan,
      'long': long,
    };
  }
}
