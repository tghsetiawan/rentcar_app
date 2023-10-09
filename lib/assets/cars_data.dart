import 'package:rentcar_app/models/car_images_model.dart';
import 'package:rentcar_app/models/car_info_model.dart';
import 'package:rentcar_app/models/car_model.dart';
import 'package:rentcar_app/models/car_spec_model.dart';

var carsData = [
  CarModel(
    id: 1,
    isLove: false,
    carName: "Toyota YARIS S TRD 1.5",
    brand: "Toyota",
    year: "2021",
    category: "most",
    rating: "4.6",
    price: "300K",
    carInfo: CarInfoModel(
      passanger: 5,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/c61905bc-ad4b-4434-a0a5-bff8c8707b0d.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/c61905bc-ad4b-4434-a0a5-bff8c8707b0d.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/cfbbb1c5-6a6d-4ed5-afd1-86891b3f67ce.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/4120fc41-e8a8-4dd9-8f62-b58af32c9ba3.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/2e0d543c-aa04-48a2-be7e-0189e2e816be.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/84bfa892-cfb8-4627-908f-9062c56987d1.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/de9a5a2a-a445-40b6-900d-4d88a2dce7f8.jpg",
    ),
  ),
  CarModel(
    id: 2,
    isLove: true,
    carName: "Toyota AVANZA G 1.5",
    brand: "Toyota",
    year: "2022",
    category: "new",
    rating: "4.8",
    price: "350K",
    carInfo: CarInfoModel(
      passanger: 7,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/72c45da9-dc65-432f-aa24-6107473d541a.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 325,
      topSpeed: 189,
      timeSpeed: 6.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/72c45da9-dc65-432f-aa24-6107473d541a.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/19f31b6d-2efb-49fb-8dc8-51e54cf678fc.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/23556fb4-8726-4737-9fa5-7484d4639463.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/a2eec2f1-5116-4877-97d1-61490d492bd6.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/de66eddb-c9a3-419f-b979-da9e8bc17a2d.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/2676df93-ba3b-4ead-8e2a-142f66cf832a.jpg",
    ),
  ),
  CarModel(
    id: 3,
    isLove: false,
    carName: "Honda BRIO SATYA E 1.2",
    brand: "Honda",
    year: "2020",
    category: "most",
    rating: "4.8",
    price: "280K",
    carInfo: CarInfoModel(
      passanger: 5,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/4c8232b5-f9b6-4c52-8f39-aab527bcf026.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/4c8232b5-f9b6-4c52-8f39-aab527bcf026.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/5bfe7d9a-ed0f-4927-b30e-e4524fbf3040.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/ca04d369-9589-453a-bab0-d44bf37629db.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/4d1c47e2-7d87-4a11-a59a-7101b1f4dc0a.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/e824d8df-ba3a-4206-b2b8-00df03a8488b.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/372b3772-4722-4dbb-bb07-265b396e2842.jpg",
    ),
  ),
  CarModel(
    id: 4,
    isLove: true,
    carName: "Honda CITY RS HATCHBACK 1.5",
    brand: "Honda",
    year: "2021",
    category: "new",
    rating: "4.8",
    price: "400K",
    carInfo: CarInfoModel(
      passanger: 5,
      fuelType: "Bensin",
      transmision: "Manual",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/255906cc-cf81-4327-af25-66dc1ea7379b.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/255906cc-cf81-4327-af25-66dc1ea7379b.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/79ef1e3b-1c19-4449-a290-bedcddcbecfc.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/ece130ff-4dd9-4212-ad5b-61eabe12c964.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/e9f0b40e-e0bd-471e-9427-aabd756c0cbc.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/e73a5d1c-6440-4613-8365-640ccfad5c6d.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/c5655440-b6a7-4925-ae45-6971d95e9ac7.jpg",
    ),
  ),
  CarModel(
    id: 5,
    isLove: true,
    carName: "BMW 3 20I (CKD) 2.0",
    brand: "BMW",
    year: "2019",
    category: "new",
    rating: "4.7",
    price: "450K",
    carInfo: CarInfoModel(
      passanger: 5,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/2e847090-399d-4d49-a386-64431c38831f.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/2e847090-399d-4d49-a386-64431c38831f.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/35fad476-f368-4081-bd83-6c0b71432629.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/b8aa8ab8-be3c-484b-aeed-22f8bae9eb19.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/47062879-aaa2-4429-b6dc-e354a0550208.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/ab594856-36e5-4a46-abac-323f6d42fd38.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/b2d0eb5f-507a-4401-b90e-f9477582289b.jpg",
    ),
  ),
  CarModel(
    id: 6,
    isLove: true,
    carName: "Mitsubishi XPANDER ULTIMATE 1.5",
    brand: "Mitsubishi",
    year: "2020",
    category: "most",
    rating: "4.7",
    price: "320K",
    carInfo: CarInfoModel(
      passanger: 7,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/73ccfdf6-a9a1-4db0-b427-dcfc1ced0178.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/73ccfdf6-a9a1-4db0-b427-dcfc1ced0178.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/bb1ed4f6-f82e-4f62-952f-c4e29cfdfc10.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/48b85ff9-f738-4647-b261-20a9625bf7a8.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/f7cbfce4-fc99-4113-a718-33405325f3c9.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/9bda5d7e-9aec-4a8d-81aa-944a65add0f9.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/70276625-455a-4423-ad58-60c35b3fbda6.jpg",
    ),
  ),
  CarModel(
    id: 7,
    isLove: true,
    carName: " Mitsubishi PAJERO SPORT DAKAR 4X2 2.4",
    brand: "Mitsubishi",
    year: "2016",
    category: "most",
    rating: "4.8",
    price: "450K",
    carInfo: CarInfoModel(
      passanger: 7,
      fuelType: "Diesel",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/149df243-0f2d-402e-9af0-add68b1515af.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/149df243-0f2d-402e-9af0-add68b1515af.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/cc4f054a-1c0b-4d02-af8d-4bfc64dae48f.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/f4160efa-b0c4-4a84-88bf-7ee0b48924f3.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/bcbf0d00-5a67-4297-86d0-3eb17ac85786.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/f64cc84a-24a5-4c59-9e40-49af75250520.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/20f6902a-e41a-49f9-a0d7-c3ea387ff975.jpg",
    ),
  ),
  CarModel(
    id: 8,
    isLove: true,
    carName: "Toyota FORTUNER VRZ 2.4",
    brand: "Toyota",
    year: "2016",
    category: "most",
    rating: "4.8",
    price: "420K",
    carInfo: CarInfoModel(
      passanger: 7,
      fuelType: "Diesel",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/22eafc6c-8b57-4d3c-bd70-97e0d88dad9c.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/22eafc6c-8b57-4d3c-bd70-97e0d88dad9c.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/5fe9c6fc-d307-417e-b810-4b27797ddca1.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/08441403-5e17-46ee-8ffa-8dab8c26d663.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/26df421f-0bc0-4460-9eed-8f40bb05d534.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/39e0955e-0476-44f0-8c6f-221547112ff4.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/98a0d32a-06c1-4a35-ab68-cb31d8523e72.jpg",
    ),
  ),
  CarModel(
    id: 9,
    isLove: false,
    carName: "Suzuki S-PRESSO 1.0",
    brand: "Suzuki",
    year: "2023",
    category: "new",
    rating: "4.3",
    price: "200K",
    carInfo: CarInfoModel(
      passanger: 5,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/cf8a749c-d5e3-4f47-a28e-6f74d7c5970e.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/cf8a749c-d5e3-4f47-a28e-6f74d7c5970e.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/43969144-bdc7-4af0-bc5e-04978c8d1da4.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/a3595a50-ce7d-41a9-965a-98ce5e56c2bb.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/0f3ba802-b776-4f09-bae1-a250734f277a.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/78ea1fa5-483f-43c6-a01f-931941971268.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/05a09002-1167-4ed7-a158-0a2c39b78dc3.jpg",
    ),
  ),
  CarModel(
    id: 10,
    isLove: true,
    carName: "Mazda CX-3 TOURING 2.0",
    brand: "Mazda",
    year: "2018",
    category: "most",
    rating: "4.5",
    price: "250K",
    carInfo: CarInfoModel(
      passanger: 5,
      fuelType: "Bensin",
      transmision: "Automatic",
      imgUrl:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/7347203d-e3cc-4511-b8ea-72428516101a.jpg",
    ),
    carSpec: CarSpecModel(
      maxPower: 320,
      topSpeed: 187,
      timeSpeed: 5.4,
    ),
    carImages: CarImagesModel(
      carImage1:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/7347203d-e3cc-4511-b8ea-72428516101a.jpg",
      carImage2:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/c181386a-f255-482d-b701-5c22112d0dd1.jpg",
      carImage3:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/9cf5d024-355a-4a1f-8d3b-e5f072371995.jpg",
      carImage4:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/ed595430-7a8b-46c3-b5df-5c9be1ae304f.jpg",
      carImage5:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/e4f808e6-588e-4482-ac6b-5ca1554631a2.jpg",
      carImage6:
          "https://b2c-cdn.carsome.id/cdn-cgi/image/format=auto,quality=50,width=1840/B2C/0e9feb8d-dba1-4f3f-bf36-b0448800364b.jpg",
    ),
  ),
];
