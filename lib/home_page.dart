import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> filters = const [
    "All",
    "Addidas",
    "Nike",
    "Bata"
  ];

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Shoes\nCollection",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
