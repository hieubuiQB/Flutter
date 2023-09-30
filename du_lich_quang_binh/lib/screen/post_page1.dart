import 'package:flutter/material.dart';
import 'package:du_lich_quang_binh/widgets/post_app_bar.dart';
import 'package:du_lich_quang_binh/widgets/post_bottom_bar.dart';

class PostPage1 extends StatelessWidget {
  final List<String> tImagePaths = [
    'assets/t1.jpg',
    'assets/t2.jpg',
    'assets/t3.jpg',
    'assets/t4.jpg',
    'assets/t5.jpg',
    'assets/t6.jpg',
    'assets/t7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: PostAppBar(),
      ),
      bottomNavigationBar: PostBottomBar(),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black, // Màu nền
        ),
        child: ListView.builder(
          itemCount: tImagePaths.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(tImagePaths[
                      index]), // Sử dụng chỉ mục để lấy đường dẫn hình ảnh
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9),
                    BlendMode.dstATop,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
