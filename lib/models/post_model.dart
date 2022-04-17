import 'package:facebook/models/models.dart';

class Post {
  final String? title;
  final String? caption;
  final User user;
  final String timeAgo;
  final String imageUrl;
  final String likes;
  final String comments;
  final String shares;

  const Post(
      {this.title,
      this.caption,
      required this.user,
      required this.timeAgo,
      required this.imageUrl,
      required this.likes,
      required this.comments,
      required this.shares});
}
