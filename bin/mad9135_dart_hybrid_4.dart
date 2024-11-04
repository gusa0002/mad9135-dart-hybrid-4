import 'package:mad9135_dart_hybrid_4/mad9135_dart_hybrid_4.dart' as mad9135_dart_hybrid_4;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;


void main(List<String> arguments) async{
  var uri = Uri.parse('https://random-data-api.com/api/users/random_user?size=10');
  try {
    final response = await http.read(uri);
    final data = convert.jsonDecode(response);
    assert(data is List);
    data.forEach((user) => print('First name: ${user['first_name']}, last name: ${user['last_name']}, uid: ${user['uid']}'));

  } catch (err) {
    print("Failed to fetch $uri");
  }
}
