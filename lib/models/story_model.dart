import 'package:facebook/models/models.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViwed;
  const Story(
      {required this.user, required this.imageUrl, this.isViwed = false});
}
