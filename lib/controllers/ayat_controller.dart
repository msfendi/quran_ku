import 'package:get/state_manager.dart';
import 'package:quran_ku/models/ayat_model.dart';
import 'package:quran_ku/services/remote_service.dart';

class AyatController extends GetxController {
  var isLoading = true.obs;
  var ayatList = List<AyatData>().obs;

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   // 10. run method on first build
  //   fetchAyat($nomor);
  //   super.onInit();
  // }

  void fetchAyat($nomor) async {
    isLoading(true);
    var ayat = await RemoteServices.fetchAyat($nomor);
    try {
      if (ayat != null) {
        ayatList.value = ayat;
      }
    } finally {
      isLoading(false);
    }
  }
}

// if(meal !=  null){
//   mealDet.update((m){
//     m.map((data) => meal);
//   }
// }
