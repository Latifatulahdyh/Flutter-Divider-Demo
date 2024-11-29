import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DividerDemo(),
    );
  }
}

class DividerDemo extends StatelessWidget {
  const DividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 35),

            // Vertical Divider
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 5),
                            Text("Demos Title",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            Container(height: 5),
                            Text("Bolt UiX",
                                style: Theme.of(context).textTheme.titleMedium),
                            Container(height: 10),
                            const Text(
                                'A divider is a thin line that groups content in lists and containers.'),
                          ],
                        ),
                      ),
                      Container(width: 10),
                      const VerticalDivider(),
                      Container(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text("Tonight's availability",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Container(height: 5),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300],
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                            child: const Text("5:30PM"),
                            onPressed: () {},
                          ),
                          Container(width: 8),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300],
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                            child: const Text("7:30PM"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Vertical Divider
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(width: 10),
                        Icon(Icons.menu),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              hintText: "Your Current Location",
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        VerticalDivider(
                            color: Color(0x84FF8A80),
                            thickness: 2,
                            indent: 0,
                            endIndent: 0,
                            width: 20),
                        SizedBox(width: 5),
                        Icon(Icons.search),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Container(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Find the best places around you",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),

            // Horizontal Divider
            const Divider(height: 40, thickness: 2, color: Colors.grey),

            // Another Card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Recommended Places",
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 10),
                    const Text("1. The Great Restaurant"),
                    const Text("2. Cozy Cafe"),
                    const Text("3. The Food Truck"),
                  ],
                ),
              ),
            ),

            // Add some space at the bottom
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
