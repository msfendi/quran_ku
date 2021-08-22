import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_ku/models/quran_model.dart';
import 'package:quran_ku/views/detailspage.dart';

class DetailSurat extends StatelessWidget {
  final QuranData quran;
  const DetailSurat(this.quran);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(DetailsPage(
          nomor: quran.nomor,
          surat: quran.nama,
          arti: quran.arti,
          tempatTurun: quran.type.toString(),
          ayat: quran.ayat.toString(),
        ));
      },
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.filter_1,
                color: Color(0xFFBB2BFF),
                size: 28,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    quran.nama,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Text(
                        quran.type.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF979797)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF979797)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        quran.ayat.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF979797)),
                      ),
                      Text(
                        ' Ayat',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF979797)),
                      ),
                    ],
                  )
                ],
              )
            ],
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
