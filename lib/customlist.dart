import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> countries = ['India', 'Britian', 'Canada', 'USA'];
    final List<String> cities = ['Delhi', 'London', 'Vancouver', 'New York'];
    final List<String> population = [
      '19 mill',
      '8 mill',
      '2.4 mill',
      '8.1 mill'
    ];
    final List<String> imageUrls = [
      'https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
      'https://images.unsplash.com/photo-1456518563096-0ff5ee08204e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
      'https://images.unsplash.com/photo-1541781286675-7b70223358d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2066&q=80',
      'https://images.unsplash.com/photo-1602276506996-8de11c09e837?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Cities around world',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Card(
                elevation: 5,
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  leading: Image.network(
                    imageUrls[index],
                    height: 200,
                    width: 80,
                  ),
                  title: Text(
                    cities[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Wrap(
                    direction: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(countries[index]),
                      Text('population :${population[index]}')
                    ],
                  ),
                ),
              ),
            );
          }, childCount: countries.length),
        ),
      ),
    );
  }
}