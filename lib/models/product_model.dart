class ProductModel {
  final name;
  final oldPrice;
  final currentPrice;
  final image;
  final numOfReviews;
  final bool isFavorite;
  final bool isCarousel;

  final details;

  ProductModel({
    this.name,
    this.oldPrice,
    this.currentPrice,
    this.image,
    this.numOfReviews,
    this.isFavorite,
    this.isCarousel,
    this.details,
  });

  static List<ProductModel> prod_list = [
    ProductModel(
      name: 'Arlo Table Lamp',
      oldPrice: '580',
      currentPrice: '360',
      image: 'images/lamp1.jpg',
      numOfReviews: '297',
      isFavorite: true,
      isCarousel: false,
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
          'when an unknown printer took a galley of type and scrambled it to make a type '
          'specimen book. It has survived not only five centuries',
    ),
    ProductModel(
      name: 'Edison Table Lamp',
      oldPrice: '960',
      currentPrice: '540',
      image: 'images/lamp2.jpg',
      numOfReviews: '104',
      isFavorite: true,
      isCarousel: false,
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
          'when an unknown printer took a galley of type and scrambled it to make a type '
          'specimen book. It has survived not only five centuries',
    ),
    ProductModel(
      name: 'Alvaro Glass Lamp',
      oldPrice: null,
      currentPrice: '240',
      image: 'images/lamp3.jpg',
      numOfReviews: '60',
      isFavorite: false,
      isCarousel: false,
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
          'when an unknown printer took a galley of type and scrambled it to make a type '
          'specimen book. It has survived not only five centuries',
    ),
    ProductModel(
      name: 'Brannan Table Lamp',
      oldPrice: '450',
      currentPrice: '230',
      image: 'images/lamp4.jpg',
      numOfReviews: '9',
      isFavorite: true,
      isCarousel: false,
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
          'when an unknown printer took a galley of type and scrambled it to make a type '
          'specimen book. It has survived not only five centuries',
    ),
    ProductModel(
      name: 'Delanay Table Lamp',
      oldPrice: null,
      currentPrice: '290',
      image: 'images/lamp5.jpg',
      numOfReviews: '305',
      isFavorite: false,
      isCarousel: false,
      details:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
          'when an unknown printer took a galley of type and scrambled it to make a type '
          'specimen book. It has survived not only five centuries',
    ),
//    ProductModel(
//      name: 'Turbulus Table Lamp',
//      oldPrice: '380',
//      currentPrice: '460',
//      image: 'images/lamps5.jpg',
//      numOfReviews: '27',
//      isFavorite: true,
//      isCarousel: true,
//      details:
//          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
//          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
//          'when an unknown printer took a galley of type and scrambled it to make a type '
//          'specimen book. It has survived not only five centuries',
//    ),
//    ProductModel(
//      name: 'Rector Table Lamp',
//      oldPrice: '260',
//      currentPrice: '470',
//      image: 'images/lamps3.jpg',
//      numOfReviews: '104',
//      isFavorite: true,
//      isCarousel: true,
//      details:
//          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
//          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
//          'when an unknown printer took a galley of type and scrambled it to make a type '
//          'specimen book. It has survived not only five centuries',
//    ),
//    ProductModel(
//      name: 'Alvaro Steel Lamp',
//      oldPrice: null,
//      currentPrice: '240',
//      image: 'images/lamps4.jpg',
//      numOfReviews: '60',
//      isFavorite: false,
//      isCarousel: true,
//      details:
//          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
//          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
//          'when an unknown printer took a galley of type and scrambled it to make a type '
//          'specimen book. It has survived not only five centuries',
//    ),
//    ProductModel(
//      name: 'Brannan Table Lamp',
//      oldPrice: '450',
//      currentPrice: '230',
//      image: 'images/lamps1.jpg',
//      numOfReviews: '9',
//      isFavorite: true,
//      isCarousel: true,
//      details:
//          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
//          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
//          'when an unknown printer took a galley of type and scrambled it to make a type '
//          'specimen book. It has survived not only five centuries',
//    ),
//    ProductModel(
//      name: 'Delanay Table Lamp',
//      oldPrice: null,
//      currentPrice: '290',
//      image: 'images/lamps2.jpg',
//      numOfReviews: '305',
//      isFavorite: false,
//      isCarousel: true,
//      details:
//          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
//          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
//          'when an unknown printer took a galley of type and scrambled it to make a type '
//          'specimen book. It has survived not only five centuries',
//    ),
  ];
}
