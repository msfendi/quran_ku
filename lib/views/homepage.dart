import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_ku/views/detailsurat.dart';
import 'package:quran_ku/controllers/quran_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuranController quranController = Get.put(QuranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Quran App',
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
          Text('Assalamualaikum',
              style: TextStyle(
                  color: Color(0xFF979797),
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text('Abdurrahman Rabbani',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFBB2BFF),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.collections_bookmark,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Last Read',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Al - Humazah',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Ayat No : ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: Obx(() {
            if (quranController.isLoading.value)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: quranController.quranList.length,
                  itemBuilder: (context, index) {
                    return DetailSurat(quranController.quranList[index]);
                  });
          })),
        ],
      ),
    ));
  }
}

// DefaultTabController(
//     initialIndex: 0,
//     length: 4,
//     child: Scaffold(
//       appBar: AppBar(
//         bottom:
//             TabBar(indicatorColor: Color(0xFFBB2BFF), tabs: <Widget>[
//           Tab(
//             child: Text('Surah'),
//           ),
//           Tab(
//             child: Text('Dzikir'),
//           ),
//           Tab(
//             child: Text('Doa'),
//           ),
//           Tab(
//             child: Text('Note'),
//           ),
//         ]),
//       ),
//       body: TabBarView(
//         children: <Widget>[
//           Text('Hal Dzikir'),
//           Text('Hal Doa'),
//           Text('Hal Note'),
//         ],
//       ),
//     )),
