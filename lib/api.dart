import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomeApi extends StatefulWidget {
  const MyHomeApi({Key? key}) : super(key: key);

  @override
  State<MyHomeApi> createState() => _MyHomeApiState();
}

class _MyHomeApiState extends State<MyHomeApi> {
  String apiKey = '007522e5d41a78a1cfe3f2af6a318b23';
  double lat = 40.7128;
  double lon = 74.0060;

  Future<String> getCityName() async {
    final httpsUri = Uri.http('api.openweathermap.org', '/data/2.5/weather', {
      'lat': '$lat',
      'lon': '$lon',
      'appid': apiKey,
    });

    var request = await http.get(httpsUri);
    if (request.statusCode == 200) {
      String data = request.body.toString();
      var city = jsonDecode(data)['name'];

      return city;
    } else {
      return '${request.statusCode}';
    }
  }

  Future<String> getWeather() async {
    final httpsUri = Uri.http('api.openweathermap.org', '/data/2.5/weather', {
      'lat': '$lat',
      'lon': '$lon',
      'appid': apiKey,
    });

    var request = await http.get(httpsUri);
    if (request.statusCode == 200) {
      String data = request.body.toString();
      var description = jsonDecode(data)['weather'][0]['description'];

      return description;
    } else {
      return '${request.statusCode}';
    }
  }

  String city = 'Your ';
  String description = 'Good Weather ';

  @override
  Widget build(BuildContext context) {
    //var city = getData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Météo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to ${city.toString()} city!',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                description.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  getCityName().then((String result) {
                    setState(() {
                      city = result;
                    });
                  });
                  getWeather().then((String result) {
                    setState(() {
                      description = result;
                    });
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Get City and Current Weather',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
