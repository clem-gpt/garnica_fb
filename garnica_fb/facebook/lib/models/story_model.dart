class StoryModel {
  final String id;
  final String userName;
  final String profileImagePath;
  final String storyImagePath;
  final DateTime timeStamp;
  final bool isViewed;

  StoryModel({
    required this.id,
    required this.userName,
    required this.profileImagePath,
    required this.storyImagePath,
    required this.timeStamp,
    this.isViewed = false,
  });

}