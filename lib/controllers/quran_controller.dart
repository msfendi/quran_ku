import 'package:get/state_manager.dart';
import 'package:quran_ku/models/quran_model.dart';
import 'package:quran_ku/services/remote_service.dart';

class QuranController extends GetxController {
  var isLoading = true.obs;
  var quranList = List<QuranData>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    // 10. run method on first build
    fetchQuran();
    super.onInit();
  }

  void fetchQuran() async {
    isLoading(true);
    var quran = await RemoteServices.fetchQuran();
    try {
      if (quran != null) {
        quranList.value = quran;
      }
    } finally {
      isLoading(false);
    }
  }
}
