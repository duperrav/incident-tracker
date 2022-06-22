
import 'package:flutter/material.dart';
import 'widgets/dropdown.dart';

class SignalerIncident extends StatefulWidget {
  const SignalerIncident({Key? key}) : super(key: key);

  @override
  State<SignalerIncident> createState() => _SignalerIncident();
}

class _SignalerIncident extends State<SignalerIncident> {

  String? dropdownvalue = 'Pomme';
  final _formKey = GlobalKey<FormState>();
  var items = [
    'Pomme',
    'Banane',
    'Fraise',
    'Orange',
    'abricot',
    'Melon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
              child: Text(
                'Signaler un incident',
                style: TextStyle(color: Colors.white, fontSize: 22),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children:  <Widget>[
                const SizedBox(height: 200),
                const Text(
                  'Sélectionnez une salle:',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 50),
                DropdownButton(
                  isExpanded: true,
                  value: dropdownvalue,
                  style: TextStyle(color: Colors.white, fontSize: 20, backgroundColor: Colors.black ),
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: items.map((items) {
                    return DropdownMenuItem(value: items, child: Text(items));
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: EdgeInsets.all(12),
                      textStyle: TextStyle(fontSize: 16),
                      fixedSize: const Size(100,50)
                  ),
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Valider'),
                ),
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
