import 'package:du_lich_quang_binh/widgets/post_app_bar.dart';
import 'package:du_lich_quang_binh/widgets/post_bottom_bar.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final List<String> aImagePaths = [
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/a3.jpg',
    'assets/a4.jpg',
    'assets/a5.jpg',
    'assets/a6.jpg',
    'assets/a7.jpg',
    'assets/a8.jpg',
    'assets/a9.jpg',
    'assets/a10.jpg',
    'assets/a11.jpg',
    'assets/a12.jpg',
    'assets/a13.jpg',
    'assets/a14.jpg',
    'assets/a15.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage(aImagePaths[0]), // Chọn một đường dẫn ảnh từ danh sách
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.9),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
