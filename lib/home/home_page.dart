
import 'package:flutter/material.dart';
import 'incident_list_page.dart';
import 'signaler_incident.dart';

// Page d'accueil

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
              child: Text(
                'Incident Tracker',
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
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 20),
                fixedSize: const Size(300,50)
              ),
              onPressed: () {
                // redirection vers la liste des tickets
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListeIncident()),
              );
            },
            child: const Text('Consulter la liste des tickets'),
          ),
                const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 20),
                fixedSize: const Size(300,50)
            ),
            onPressed: () {Navigator.push(
              // redirection vers la section signaler un incident
              context,
              MaterialPageRoute(builder: (context) => const SignalerIncident()),
            );},
            child: const Text('Signaler un incident'),
          ),
          ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
