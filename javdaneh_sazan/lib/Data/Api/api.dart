import 'package:dio/dio.dart';

String headUrl = '';

String checkSessionUrl = '${headUrl}checkSession/';
String getPhoneUrl = '${headUrl}getPhone/';
String verifyPhoneUrl = '${headUrl}verifyPhone/';
String customerRegistrationUrl = '${headUrl}customerRegistration/';
String editInfoCustomerUrl = '${headUrl}editInfoCustomer/';

headerApi() {
  return Options(
    headers: {'API-X-KEY': 'key'},
  );
}

timeLimit() {
  return const Duration(seconds: 10);
}

class ApiProvider {
  //

  checkSessionApi({
    required String session,
  }) async {
    final response = await Dio().post(
      checkSessionUrl,
      options: headerApi(),
      data: {
        'Session': session,
      },
    ).timeout(timeLimit());

    return response;
  }

   sendCodeToPhone({
    required String phone,
  }) async {
    final response = await Dio().post(
      checkSessionUrl,
      options: headerApi(),
      data: {
        'Phone': phone,
      },
    ).timeout(timeLimit());

    return response;
  }

   checkSessifonApi({
    required String session,
  }) async {
    final response = await Dio().post(
      checkSessionUrl,
      options: headerApi(),
      data: {
        'Session': session,
      },
    ).timeout(timeLimit());

    return response;
  }

}
