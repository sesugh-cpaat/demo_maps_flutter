import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_webservice/places.dart';

class MyAppTest extends StatefulWidget {
  MyAppTest({Key? key}) : super(key: key);

  @override
  State<MyAppTest> createState() => _MyAppTestState();
}

class _MyAppTestState extends State<MyAppTest> {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            void onError(PlacesAutocompleteResponse response) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response.errorMessage ?? 'Unknown error'),
        ),
      );
    }

    // show input autocomplete with selected mode
    // then get the Prediction selected
    final p = await PlacesAutocomplete.show(
      context: context,
      apiKey: "AIzaSyATuTMJE-N3MCC3Ne61V4KQ3t5Tahh3RP0",
      onError: onError,
      mode: Mode.overlay,
      // language: 'fr',
      components: [Component(Component.country, 'fr')],
    );
          },
          child: Text("Search"),
        ),
      ),
    );
  }
}
