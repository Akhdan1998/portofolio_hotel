import 'package:portofolio_hotel/story/story_model.dart';

class UserModel {
  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;

  UserModel(this.stories, this.userName, this.imageUrl);
}
