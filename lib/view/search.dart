import 'package:flutter/material.dart';

import '../widget/shoe.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 253, 251).withOpacity(.9),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Container(
                  width: 280,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Searh Product',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Find your suitable \nShoes now.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Container(
              width: double.infinity,
              height: 550,
              child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 190,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 80),
                  itemBuilder: ((context, index) {
                    return Shoe();
                  })),
            )
          ],
        ),
      ),
    );
  }
}
