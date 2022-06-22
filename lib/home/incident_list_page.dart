
import 'package:flutter/material.dart';
import 'widgets/dropdown.dart';

class ListeIncident extends StatefulWidget {
  const ListeIncident({Key? key}) : super(key: key);

  @override
  State<ListeIncident> createState() => _ListeIncident();
}

class _ListeIncident extends State<ListeIncident> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
              child: Text(
                'Liste des tickets',
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
                const SizedBox(height: 80),
                const Text(
                  'Voici les tickets émis',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 40),
              DataTable(
                
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Nom',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),

                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(

                          Text(
                        'Ecran pourri',
                        style: TextStyle(color: Colors.white, fontSize: 20))
                      ),
                      DataCell(Text(
                          '19/05/2023',
                          style: TextStyle(color: Colors.white, fontSize: 20)))
                    ],
                  ),

                ],
              ),

              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
