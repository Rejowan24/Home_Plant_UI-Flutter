class Postlist {
  String? imageurl;
  String? title;
  String? date;
  String? text;
  String? postBy;

  Postlist(
      {required this.imageurl,
      required this.title,
      required this.date,
      required this.text,
      required this.postBy});
}

List<Postlist> postlist = [
  Postlist(
      imageurl: 'assets/images/image4.jpg',
      title: 'Natural Beauty',
      date: '17/02/23',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquam lobortis rhoncus. Curabitur tincidunt nisi quam, vestibulum pharetra justo porttitor ut. Praesent feugiat',
      postBy: 'Rejowan'),
  Postlist(
      imageurl: 'assets/images/image4.jpg',
      title: 'Different Eyes',
      date: '26/02/23',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquam lobortis rhoncus. Curabitur tincidunt nisi quam, vestibulum pharetra justo porttitor ut. Praesent feugiat',
      postBy: 'John Henry')
];
