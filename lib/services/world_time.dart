import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location, required this.flag, required this.url});
// Asia/Phnom_Penh
  Future<void> getTime() async {
    var response =
        await http.get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    // var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    Map data = convert.jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // ignore: avoid_print
    print(now);

    time = now.toString();
  }
}
