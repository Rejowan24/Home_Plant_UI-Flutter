class GroupList {
  String? listimage;
  String? listTitle;
  String? listSubtitle;

  GroupList(
      {required this.listimage,
      required this.listTitle,
      required this.listSubtitle});
}

List<GroupList> grouplist = [
  GroupList(
      listimage: 'second.jpg',
      listTitle: 'We love monstera',
      listSubtitle: 'and 3251 subscribers'),
  GroupList(
      listimage: 'third.jpg',
      listTitle: 'I bought a cactus',
      listSubtitle: 'and 3562 subscribers'),
  GroupList(
      listimage: 'fifth.jpg',
      listTitle: 'Tasty fruit',
      listSubtitle: 'and 1231 subscribers'),
  GroupList(
      listimage: 'fourth.jpg',
      listTitle: 'Mixing flowers',
      listSubtitle: 'and 2330 subscribers'),
  GroupList(
      listimage: 'sixth.jpg',
      listTitle: 'The new Scene',
      listSubtitle: 'and 5231 subscribers'),
];
