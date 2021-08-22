import 'package:flutter/material.dart';
import 'package:quran_ku/models/ayat_model.dart';

// class DetailAyat extends StatefulWidget {
//   final AyatData ayat;
//   const DetailAyat(AyatData ayatList, {Key key, this.ayat}) : super(key: key);

//   @override
//   _DetailAyatState createState() => _DetailAyatState();
// }

// class _DetailAyatState extends State<DetailAyat> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 20,
//           ),
//           Stack(
//             children: <Widget>[
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 45,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.black12),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 7, left: 20),
//                 width: 30,
//                 height: 30,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(100),
//                     color: Color(0xFFBB2BFF)),
//                 child: Center(
//                   child: Text(
//                     widget.ayat.nomor,
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Text(
//                 widget.ayat.ar,
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 widget.ayat.id,
//                 style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.italic),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             child: Text(
//               widget.ayat.tr,
//               style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
//             ),
//           ),
//           Text(
//             '________________________________',
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.w300,
//                 color: Color(0xFFC4C4C4)),
//           ),
//         ],
//       ),
//     );

//   }
// }

class DetailAyat extends StatelessWidget {
  final AyatData ayat;
  const DetailAyat(this.ayat);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 20),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFFBB2BFF)),
                child: Center(
                  child: Text(
                    ayat.nomor,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10, left: 11),
                  child: Text(
                    ayat.ar,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  ayat.id,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              ayat.tr,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
          ),
          Text(
            '________________________________',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Color(0xFFC4C4C4)),
          ),
        ],
      ),
    );
  }
}
