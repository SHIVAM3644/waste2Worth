import 'package:dio/dio.dart';
import 'package:waste2worth/Api/api_file.dart';
import 'package:waste2worth/core_process_guide/Model/ProcessGuideModel.dart';


class ProcessGuideRepository {
  Future<List<ProcessGuideModel>> fetchProcessGuides() async {
    try {
      final Response response = await ApiService.getRequest("process-guides");

      if (response.statusCode == 200) {
        final data = response.data as List;
        return data.map((json) => ProcessGuideModel.fromJson(json)).toList();
      } else {
        throw Exception("Failed with status code ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching guides: $e");
    }
  }
}
