class SocialPost {
  final String userAvatar;
  final String username;
  final String location;
  final String imageUrl;
  final List<String> likedByAvatars;
  final String likedByText;
  int likes;
  bool isLike;
  bool isBookmarked;

  SocialPost({
    required this.userAvatar,
    required this.username,
    required this.location,
    required this.imageUrl,
    required this.likedByAvatars,
    required this.likedByText,
    required this.likes,
    this.isBookmarked = false,
    this.isLike = false,
  });
}
