import 'package:get/get.dart';
import 'package:waste2worth/core_process_guide/Model/ProcessGuideModel.dart';
import 'package:waste2worth/core_process_guide/Service/process_guide_srvice.dart';


class ProcessGuideController extends GetxController with StateMixin<List<ProcessGuideModel>> {
  final _repo = ProcessGuideRepository();

  Future<void> fetchProcessGuides() async {
    change(null, status: RxStatus.loading());

    try {
      final guides = await _repo.fetchProcessGuides();
      if (guides.isNotEmpty) {
        change(guides, status: RxStatus.success());
      } else {
        change([], status: RxStatus.empty());
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
