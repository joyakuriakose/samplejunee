import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ItemsView(),
  ));
}

class ItemsView extends StatelessWidget {
  const ItemsView({
    Key? key,
  }) : super(key: key);
  static const List<String> names = [
    'Vegetables',
    'Fruits',
    'Exotic',
    'Fresh Cuts',
    'Nutrition Chargers',
    'Packed Flavours'
  ];
  static const List<String> images = [
    "https://images.pexels.com/photos/2291070/pexels-photo-2291070.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3085062/pexels-photo-3085062.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/7494449/pexels-photo-7494449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/7817325/pexels-photo-7817325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/7474082/pexels-photo-7474082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/8679553/pexels-photo-8679553.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            GridView.builder(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  crossAxisCount: 3,
                ),
                itemBuilder: (ctx, index) {
                  return FarmersCard(
                    image: images[index],
                    txt: names[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}

class FarmersCard extends StatelessWidget {
  const FarmersCard({
    Key? key,
    required this.image,
    required this.txt,
  }) : super(key: key);
  final String image;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2), width: 2,),
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(color: Colors.grey.withOpacity(0.4), offset: Offset(0, 3))
          // ],
          borderRadius: BorderRadius.circular(10)),
      width: 110,
      height: 130,
      child: Column(
        children: [
          Expanded(
              child: ClipRRect(

                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,width: 200,height: 200,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            txt,
            style: const TextStyle(fontSize: 12.5),
          )
        ],
      ),
    );
  }
}
