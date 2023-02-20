class MarketSlider {
  String? contentImageurl;
  String? profileImage;
  String? price;
  String? subImageurl;
  String? subImagetwourl;

  String? title;
  String? name;

  MarketSlider(
      {required this.contentImageurl,
      required this.profileImage,
      required this.price,
      required this.subImagetwourl,
      required this.subImageurl,
      required this.title,
      required this.name});
}

List<MarketSlider> marketsliderinfo = [
  MarketSlider(
      contentImageurl: 'market4.jpg',
      profileImage: 'profile3.jpg',
      price: '\$15',
      subImagetwourl: 'market1.jpg',
      subImageurl: 'market2.jpg',
      title: 'Vegetables Garden',
      name: 'Carla Houston'),
  MarketSlider(
      contentImageurl: 'market3.jpg',
      profileImage: 'profile4.jpg',
      price: '\$25',
      subImagetwourl: 'market6.jpg',
      subImageurl: 'market5.jpg',
      title: 'Carrot Cultivars',
      name: 'Kaitlyn Kristy'),
  MarketSlider(
      contentImageurl: 'market5.jpg',
      profileImage: 'profile6.jpg',
      price: '\$30',
      subImagetwourl: 'market2.jpg',
      subImageurl: 'market4.jpg',
      title: 'Fruits Collection',
      name: 'Samantha Smith'),
  MarketSlider(
      contentImageurl: 'market6.jpg',
      profileImage: 'profile5.jpg',
      price: '\$40',
      subImagetwourl: 'market4.jpg',
      subImageurl: 'market3.jpg',
      title: 'Tree plantation',
      name: 'Ashley Rosa'),
];
