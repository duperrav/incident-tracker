
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: MyHomePage()
));

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Incident Tracker',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
              child: Text(
                'Incident Tracker',
                style: TextStyle(color: Colors.white, fontSize: 22),
              )),

        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 20),
                fixedSize: const Size(300,50)
            ),
            onPressed: () {},
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
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );},
            child: const Text('Signaler un incident'),
          ),
        ],
      ),
    );
  }
}


class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

