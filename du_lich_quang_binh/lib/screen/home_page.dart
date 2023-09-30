import 'package:du_lich_quang_binh/screen/post_page.dart';
import 'package:du_lich_quang_binh/screen/post_page1.dart';
import 'package:flutter/material.dart';
import '../widgets/home_app_bar.dart';
import 'package:du_lich_quang_binh/widgets/home_bottom_bar.dart';

class HomePage extends StatelessWidget {
  final List<String> tImagePaths = [
    'assets/t1.jpg',
    'assets/t2.jpg',
    'assets/t3.jpg',
    'assets/t4.jpg',
    'assets/t5.jpg',
    'assets/t6.jpg',
    'assets/t7.jpg',
  ];

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

  var tLocations = [
    'Động Phong Nha',
    'Động Thiên Đường',
    'Động Tiên Sơn',
    'Sông Chày Hang Tối',
    'Suối Nước Mọoc',
    'Bãi Biển Nhật Lệ',
    'Bãi Biển Bảo Ninh',
  ];

  var aLocations = [
    'Bánh Lọc',
    'Bánh xèo Quảng Hòa',
    'Bánh Bèo',
    'Bánh Khoái',
    'Bánh cuốn Tôm',
    'Bún Bò Giò Heo',
    'Cháo Bánh Canh',
    'Cháo Hàu',
    'Cháo Lươn Đồng',
    'Hải Sản Tươi Sống',
    'Khoai Gieo',
    'Cá Trắm Sông Son',
    'Rảm đen',
    'Cua om bí đao',
    'Mực một nắng',
  ];

  var categories = [
    'Danh Lam Thắng Cảnh',
    'Khu Vui Chơi',
    'Ẩm Thực Quê Hương',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: tImagePaths.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            if (index < tLocations.length) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostPage1(),
                                      ));
                                },
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.all(20),
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(tImagePaths[index]),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.7),
                                        BlendMode.srcOver,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.bookmark_add_outlined,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          tLocations[index],
                                          style: TextStyle(
                                            color: Colors.yellow,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < categories.length; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              categories[i],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: aImagePaths.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PostPage(),
                                  ));
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(aImagePaths[index]),
                                    fit: BoxFit.cover,
                                    opacity: 0.8,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  aLocations[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(Icons.more_vert, size: 30),
                              ],
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(Icons.star, size: 20, color: Colors.amber),
                              Text(
                                "5",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomebottomBar(),
    );
  }
}
