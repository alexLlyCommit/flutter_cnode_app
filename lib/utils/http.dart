import 'dart:convert';
import 'dart:io';

final httpClient = new HttpClient();

get(apiUri, [Map queryParams]) async {
  final uri = new Uri.https('cnodejs.org', '/api/v1/$apiUri',
      queryParams == null ? null : queryParams);
  final request = await httpClient.getUrl(uri);
  final response = await request.close();
  final json = await response.transform(utf8.decoder).join();
  final data = jsonDecode(json)['data'];
  return data;
}
