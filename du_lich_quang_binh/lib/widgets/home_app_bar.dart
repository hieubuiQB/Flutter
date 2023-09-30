import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.red,
              //       blurRadius: 6,
              //     ),
              //   ],
              //   borderRadius: BorderRadius.circular(15),
              // ),
              child: Icon(
                Icons.sort_rounded,
                size: 30,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   Icons.location_on,
                //   color: Colors.orange,
                // ),
                Text(
                  "Quảng Bình, Việt Nam",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Icon(
                  Icons.search,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
// class HomeAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.s,
//       height: 50,
//       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//         Icon(
//           Icons.sort_rounded,
//           size: 30,
//         ),
//         Text(
//           "Quảng Bình, Việt Nam",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         Icon(
//           Icons.location_on,
//           color: Colors.orange,
//         ),
//       ]),
//     );
//   }
// }
