import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocatorlearn/GeoLocationAppFile.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: GeolocationApp(),
    );
  }
}

class GeolocationApp extends StatefulWidget {
  const GeolocationApp({super.key});

  @override
  State<GeolocationApp> createState() => _GeolocationAppState();
}

class _GeolocationAppState extends State<GeolocationApp> {

  Position? position;
  // late final double latitude = 0.0;
  // late final double longitude = 0.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geolocation App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Latitude : ${position?.latitude}"),
            const SizedBox(height: 10,),
            Text("Longitudde : ${position?.longitude}"),
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () async {
                  position = await DeterminePosition().determinePosition(context);
                  setState(() {
                    
                  });
                },
                child: const Text("Get Position"))
          ],
        ),
      ),
    );
  }
}

