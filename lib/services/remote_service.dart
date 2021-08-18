import 'package:http/http.dart' as http;
import 'package:quran_ku/models/ayat_model.dart';
import 'package:quran_ku/models/quran_model.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<QuranData>> fetchQuran() async {
    var response =
        await client.get('https://al-quran-8d642.firebaseio.com/data.json');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return quranDataFromJson(jsonString);
    } else {
      return null;
    }
  }

  static Future<List<AyatData>> fetchAyat($nomor) async {
    var response = await client
        .get("https://al-quran-8d642.firebaseio.com/surat/" + $nomor + ".json");
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return ayatDataFromJson(jsonString);
    } else {
      return null;
    }
  }
}
