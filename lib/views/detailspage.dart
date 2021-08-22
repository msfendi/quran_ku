import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_ku/controllers/ayat_controller.dart';
import 'package:quran_ku/views/detailayat.dart';

class DetailsPage extends StatefulWidget {
  final String nomor;
  final String surat;
  final String arti;
  final String tempatTurun;
  final String ayat;
  const DetailsPage(
      {Key key, this.nomor, this.surat, this.arti, this.tempatTurun, this.ayat})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final AyatController ayatController = Get.put(AyatController());
  void passNomorAyat() {
    ayatController.fetchAyat(widget.nomor);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passNomorAyat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Text(widget.surat,
                      style: TextStyle(
                          color: Color(0xFF890BA9),
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 218,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFBB2BFF)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    widget.surat,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.arti,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Text(
                    '_________________________',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.tempatTurun,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.ayat,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: <Widget>[
            //         DetailAyat(
            //           ayatKe: '1',
            //           ayatArab: 'bismilahirahmanirahim',
            //           ayatIndonesia: 'bismilahirahmanirahim',
            //           terjemahan:
            //               'Segala puji kita persembahkan hanya untuk Allah semata, Tuhan Pencipta dan Pemelihara seluruh alam, yaitu semua jenis makhluk.',
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(child: Obx(() {
              if (ayatController.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return ListView.builder(
                    itemCount: ayatController.ayatList.length,
                    itemBuilder: (context, index) {
                      return DetailAyat(ayatController.ayatList[index]);
                    });
            })),
          ],
        ),
      ),
    );
  }
}
