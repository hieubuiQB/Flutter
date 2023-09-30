import 'package:du_lich_quang_binh/screen/home_page.dart';
import 'package:flutter/material.dart';

class WelomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/t.jpg'),
        fit: BoxFit.cover,
        opacity: 0.7,
      )),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DU LỊCH ",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "QUẢNG BÌNH",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Dãi đất Quảng Bình trải ra như một bức tranh hoành tráng, có rừng, có biển với nhiều cảnh quan thiên nhiên đẹp, thắng cảnh nổi tiếng: đèo Ngang, đèo Lý Hoà, cửa biển Nhật Lệ, phá Hạc Hải, Cổng Trời… và Vườn quốc gia Phong Nha – Kẻ Bàng được công nhận là Di sản Thiên nhiên thế giới.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
