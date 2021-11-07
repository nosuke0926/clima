import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: kTextFieldInputDecoration,
              onChanged: (value) {
                cityName = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: Text('Get Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
