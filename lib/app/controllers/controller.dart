import 'dart:convert';

import 'package:api_calling_getx/app/data/models/album_model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  var photoList = <AlbumModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    print('done');
    await fetchAlbumData();
  }

  void todo(){

  }
  Future<void> fetchAlbumData() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos/2"));
    if (response.statusCode == 200) {
      AlbumModel _albumModel = AlbumModel.fromJson(jsonDecode(response.body));
      photoList.add(AlbumModel(
          albumId: _albumModel.albumId,
          id: _albumModel.id,
          title: _albumModel.title,
          url: _albumModel.url,
          thumbnailUrl: _albumModel.thumbnailUrl));
      print(photoList);
      isLoading.value = false;
      print(response.body);
      update();
    } else {
      Get.snackbar('Error Loadin Data',
          'Server responded: ${response.statusCode}: ${response.reasonPhrase.toString}');
    }
  }


}
