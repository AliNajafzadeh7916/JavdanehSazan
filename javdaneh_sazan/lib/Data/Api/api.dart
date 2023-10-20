import 'package:dio/dio.dart';
import 'package:javdaneh_sazan/Data/App/dynamic_data_app.dart';

String headUrl = 'https://jvds.akhtarak1024.ir/api/';
String apikey =
    '1529c8c2-0309-47de-95e5-632efa2ccafd-48b3dc62-560d-4f94-a01d-6b2439551c02';

String checkSessionUrl = '${headUrl}checkSession/';
String sendCodeToPhoneUrl = '${headUrl}sendCodeToPhone/';

privateHeader() {
  return Options(
    headers: {
      'API-X-KEY': apikey,
      'Session': session,
    },
  );
}

publicHeader() {
  return Options(
    headers: {'API-X-KEY': apikey},
  );
}

class Api {
  //

  checkSessionApi({
    required String session,
  }) async {
    final response = await Dio().post(
      checkSessionUrl,
      options: publicHeader(),
      data: {
        'Session': session,
      },
    ).timeout(const Duration(seconds: 10));

    return response;
  }

  sendCodeToPhone({
    required String phone,
  }) async {
    final response = await Dio().post(
      sendCodeToPhoneUrl,
      options: publicHeader(),
      data: {
        'Phone': phone,
      },
    ).timeout(const Duration(seconds: 10));

    return response;
  }

  aaaa({
    required String session,
  }) async {
    final response = await Dio().post(
      checkSessionUrl,
      options: publicHeader(),
      data: {
        'Session': session,
      },
    ).timeout(const Duration(seconds: 10));

    return response;
  }
}
