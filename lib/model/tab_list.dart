class Tablist {
  String? imageurl;
  String? title;
  String? subtitle;
  String? buttoninfo;

  Tablist(
      {required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.buttoninfo});
}

//pass data on the list here.

List<Tablist> listinfo = [
  Tablist(
      imageurl: 'assets/images/image1.jpg',
      title: 'Lop-eared',
      subtitle: 'Philodendron Monstera',
      buttoninfo: '13%'),
  Tablist(
      imageurl: 'assets/images/image2.jpg',
      title: 'Post two',
      subtitle: 'Image post two',
      buttoninfo: '16%'),
  Tablist(
      imageurl: 'assets/images/image3.jpg',
      title: 'Post three',
      subtitle: 'Image post three',
      buttoninfo: '20%'),
  Tablist(
      imageurl: 'assets/images/image4.jpg',
      title: 'Post four',
      subtitle: 'Image post four',
      buttoninfo: '30%'),
  Tablist(
      imageurl: 'assets/images/image5.jpg',
      title: 'Post five',
      subtitle: 'Image post five',
      buttoninfo: '25%'),
  Tablist(
      imageurl: 'assets/images/image6.jpg',
      title: 'Post six',
      subtitle: 'Image post six',
      buttoninfo: '35%'),
  Tablist(
      imageurl: 'assets/images/image7.jpg',
      title: 'Post seven',
      subtitle: 'Image post seven',
      buttoninfo: '38%'),
  Tablist(
      imageurl: 'assets/images/image8.jpg',
      title: 'Post eight',
      subtitle: 'Image post eight',
      buttoninfo: '42%'),
];
