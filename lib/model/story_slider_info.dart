class StorySlider {
  String? title;
  String? imageurl;
  String? profileimage;

  StorySlider({required this.title, required this.imageurl, this.profileimage});
}

List<StorySlider> storysliderinfo = [
  StorySlider(title: 'Add Stories', imageurl: 'profile.jpg'),
  StorySlider(
      title: 'Mohet Verb', imageurl: "second.jpg", profileimage: 'profile.jpg'),
  StorySlider(
      title: 'Mouni Mukas',
      imageurl: "third.jpg",
      profileimage: 'profile1.jpg'),
  StorySlider(
      title: 'Mounami Roy',
      imageurl: "fourth.jpg",
      profileimage: 'profile4.jpg'),
  StorySlider(
      title: 'Suman shah', imageurl: "fifth.jpg", profileimage: 'profile3.jpg'),
];
