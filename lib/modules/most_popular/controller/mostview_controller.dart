import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:nyt_details/global/constants/app_state.dart';
import '../../../global/api/base/base_repo.dart';
import '../../../global/api/uris/uris.dart';
import '../../../global/model/viewed_model.dart';
import '../../../global/widgets/scnakbar.dart';

class MostViewedController extends SateProvider {
  MostViewedController() {
    getMostViewed();
  }

  final _baseRepository = BaseRepository();
  ViewedResponce? viewed;
  KState state = KState.loading;

  Future<void> getMostViewed() async {
    try {
      update(() => state = KState.loading);
      viewed = await _baseRepository.apiCall(
          call: Dio().get(ApiUris.mostPopular,
              queryParameters: {"api-key": ApiUris.API_KEY}),
          onSuccess: (res) =>
              ViewedResponce.fromJson(res.data));
      update(() => state = KState.loaded);
    } catch (e) {
      log(e.toString());
      showSnackBar(e.toString());
      update(() => state = KState.error);
    }
  }
}
