import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';

final User currentUser =
    User(name: "Karun", imageAsset: AssetImage("assets/images/karun01.jpg"));

final List<User> otherUser = [
  User(
      name: "Selva Sampath",
      imageAsset: AssetImage("assets/images/selva01.jpg")),
  User(
      name: "Kapil Dhana", imageAsset: AssetImage("assets/images/kapil01.jpg")),
  User(
      name: "Ramasamy Walker",
      imageAsset: AssetImage("assets/images/ram01.jpg")),
  User(name: "Raja Durai", imageAsset: AssetImage("assets/images/raja01.jpg")),
  User(
      name: "Dhanas Sek", imageAsset: AssetImage("assets/images/dhanas01.jpg")),
  User(
      name: "Sudharsan Kumaravel",
      imageAsset: AssetImage("assets/images/sudhar01.jpg")),
  User(
      name: "Ashwin Kumar",
      imageAsset: AssetImage("assets/images/ashwin01.jpg")),
  User(name: "Gangai", imageAsset: AssetImage("assets/images/08.jpg")),
];

List<Story> stories = [
  Story(
      user: otherUser[2],
      imageUrl:
          "https://th.bing.com/th/id/R.8d7238f774b936fc77a11c04858e86ed?rik=6l849QB1IQE0Kw&riu=http%3a%2f%2fwww.hdnicewallpapers.com%2fWalls%2fBig%2fCricket%2fMS_Dhoni_in_T20_World_Cup_2016_HD_Wallpapers.jpg&ehk=WfW9e0PmM56kyKoAFknafmvLxYsqitkABvSl0zAcbbs%3d&risl=&pid=ImgRaw&r=0"),
  Story(
      user: otherUser[6],
      imageUrl:
          "https://tamil.samayam.com/photo/msid-89962551,imgsize-16006/pic.jpg"),
  Story(
      user: otherUser[1],
      imageUrl:
          "https://www.99images.com/photos/celebrities/priyanka-arul-mohan/priyanka-arul-mohan-latest-hot-beautiful-hd-photos-1080p-qgl.jpg?v=1577305301"),
  Story(
      user: otherUser[0],
      imageUrl:
          "https://th.bing.com/th/id/OIP.2xmHDmbUOUp_A-SsNJXBgwHaKg?pid=ImgDet&rs=1"),
  Story(
      user: otherUser[3],
      imageUrl:
          "https://www.suryanfm.in/wp-content/uploads/2021/06/pjimage-34-30.jpg"),
  Story(
      user: otherUser[5],
      imageUrl:
          "https://i0.wp.com/i.pinimg.com/564x/14/b2/24/14b224a4d8d92a0207a8683b64575a5a.jpg"),
  Story(
      user: otherUser[4],
      imageUrl:
          "https://content.tupaki.com//twdata/2020/1220/photos/actors/Actor%20Vijay%20Thalapathy%20Latest%20Pics/normal/Actor%20Vijay%20Thalapathy%20Latest%20Pics_2.jpg"),
  Story(
      user: otherUser[7],
      imageUrl:
          "https://www.filmibeat.com/ph-big/2019/06/jyothika_156152697650.jpg"),
];

List<Post> posts = [
  Post(
      title: "  updated his cover\nphoto.",
      user: otherUser[3],
      timeAgo: "19m ago . ",
      imageUrl:
          "https://th.bing.com/th/id/OIP.dJ1NYHtQg71X6yPpCxRSmgHaEO?pid=ImgDet&rs=1",
      likes: "143k Likes",
      comments: "89 Comments",
      shares: ". 111 Shares"),
  Post(
      title: "  added a new photo.",
      // caption: "#Happy customer And Safe Ride.. plz Wear #Helmet",
      user: otherUser[6],
      timeAgo: "2h ago . ",
      imageUrl:
          "https://i1.wp.com/gadgetgarrio.com/wp-content/uploads/2019/04/Ravindra-Jadeja.jpg?resize=696%2C406&ssl=1",
      likes: "256 Likes",
      comments: "103 Comments",
      shares: ". 55 Shares"),
  Post(
      title: "  added a new photo.",
      caption:
          "#Manager: Guys switch on your camera, Need to see your faces. We will have fun..come on..!",
      user: otherUser[0],
      timeAgo: "5h ago . ",
      imageUrl:
          "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2022/04/14/1466435-yash-kgf-chapter-2-review.jpg",
      likes: "139 Likes",
      comments: "43 Comments",
      shares: ". 25 Shares"),
  Post(
      title: "  shared a new pto.",
      caption: "#Happy customer And Safe Ride.. plz Wear #Helmet",
      user: otherUser[2],
      timeAgo: "1d ago . ",
      imageUrl:
          "https://1.bp.blogspot.com/-GdQjBFaW1l0/YKvCddkp68I/AAAAAAAAByI/aB-SdQbwuLcgBhANmRRu7BGBFKS5TUPZACLcBGAsYHQ/s1200/1_lR6oU5-XKHH_8I9S-hjOqg.png",
      likes: "217k Likes",
      comments: "23k Comments",
      shares: ". 290 Shares"),
  Post(
      title: "  updated his\ncover photo.",
      caption: "#Nature_love",
      user: otherUser[5],
      timeAgo: "5d ago . ",
      imageUrl:
          "https://scontent.fmaa13-1.fna.fbcdn.net/v/t1.6435-9/37053612_1190061791132121_4124436676074274816_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=e3f864&_nc_ohc=oviE1UcfUwcAX-xrm5E&_nc_ht=scontent.fmaa13-1.fna&oh=00_AT_tcuFgd_vrUKzN--u7RREWmQZUpWOR5LiCcNUYWBnz_Q&oe=62655DC7",
      likes: "256 Likes",
      comments: "103 Comments",
      shares: ". 55 Shares"),
  Post(
      title: "  updated his profile picture.",
      caption: "#Happy customer And Safe Ride.. plz Wear #Helmet",
      user: otherUser[6],
      timeAgo: "2h ago . ",
      imageUrl: "assets/images/ashwin01.jpg",
      likes: "256 Likes",
      comments: "103 Comments",
      shares: ". 55 Shares"),
  Post(
      title: "  added a new photo.",
      caption: "#Happy customer And Safe Ride.. plz Wear #Helmet",
      user: otherUser[6],
      timeAgo: "2h ago . ",
      imageUrl: "assets/images/ashwin01.jpg",
      likes: "256 Likes",
      comments: "103 Comments",
      shares: ". 55 Shares"),
  Post(
      title: "  added a new photo.",
      caption: "#Happy customer And Safe Ride.. plz Wear #Helmet",
      user: otherUser[6],
      timeAgo: "2h ago . ",
      imageUrl: "assets/images/ashwin01.jpg",
      likes: "256 Likes",
      comments: "103 Comments",
      shares: ". 55 Shares"),
];
