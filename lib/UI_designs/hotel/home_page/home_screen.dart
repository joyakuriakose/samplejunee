// import 'package:flutter/material.dart';
// import 'package:samplejunee/UI_designs/hotel/home_page/components/appbarsliver.dart';
// import 'package:samplejunee/UI_designs/hotel/home_page/components/containerlist.dart';
// import 'components/appbarsliver.dart';
// import 'components/detailsview.dart';
//
// class HomeScreen extends StatelessWidget {
//   static final images = [
//     'https://images.pexels.com/photos/5883725/pexels-photo-5883725.jpeg',
//     'https://images.pexels.com/photos/12698081/pexels-photo-12698081.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
//     'https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
//     'https://images.pexels.com/photos/6207819/pexels-photo-6207819.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//     'https://images.pexels.com/photos/7535037/pexels-photo-7535037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
//   ];
//   static final ratings = [5.0, 4.0, 3.0, 2.0, 4.0];
//   static final reviews = ['100', '200', '300', '400', '500'];
//   static final prices = ['34', '40', '50', '60', '30'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: CustomScrollView(
//         slivers: [
//           HotelAppBar(),
//           SliverList(
//               delegate: SliverChildListDelegate([
//             ThreeContainers(),
//             ListView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 scrollDirection: Axis.vertical,
//                 shrinkWrap: true,
//                 padding: const EdgeInsets.all(0),
//                 itemCount: images.length,
//                 itemBuilder: (ctx, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       print('tapped');
//                     },
//                     child: DetailsView(
//                       image: images[index],
//                       rating: ratings[index],
//                       review: reviews[index],
//                       price: prices[index],
//                     ),
//                   );
//                 })
//           ]))
//         ],
//       ),
//     );
//   }
// }
