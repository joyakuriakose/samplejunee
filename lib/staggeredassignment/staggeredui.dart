import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(home: StaggeredUi(),debugShowCheckedModeBanner: false));
}

class StaggeredUi extends StatelessWidget {
  List titles = [
    "HILL",
    "SNOW",
    "SEA",
    "SWANS",
    "ROSE",
    "BIRD",
    "BUTTERFLY",
    "Randy",
    "Reed",
    "Larry",
    "Barnes",
    "Lois",
    "Wilson",
    "Jesse",
    "Campbell",
    "Ernest",
    "Rogers",
    "Theresa",
    "Patterson",
  ];

  List images = [
    "https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=468&q=80",
    "https://images.unsplash.com/photo-1545310834-cd6a8a0884b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1470107355970-2ace9f20ab15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1526336179256-1347bdb255ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://images.unsplash.com/photo-1532433364291-dea3cc945cbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1550103685-da83caf1f0c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1512888482612-b5c7c4344c1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1782&q=80",
    "https://images.unsplash.com/photo-1549777501-5656651fd109?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1494137269338-d36b0f687715?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=468&q=80",
    "https://images.unsplash.com/photo-1545310834-cd6a8a0884b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1470107355970-2ace9f20ab15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1526336179256-1347bdb255ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://images.unsplash.com/photo-1532433364291-dea3cc945cbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.orange,
          title: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('Card Base Features',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text('StaggeredGrid',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                  child: CircleAvatar(
                    radius: 15.5,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1512888482612-b5c7c4344c1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1782&q=80"),
                  ),
                )
              ],
            ),
          ),
          elevation: 0,
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        margin: const EdgeInsets.all(5),
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            reverse: false,
            physics: const BouncingScrollPhysics(),
            crossAxisSpacing: 0,
            mainAxisSpacing: 5,
            itemCount: images.length,
            crossAxisCount: 3,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  // height: index.isEven ? 200 : 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),

                  margin: const EdgeInsets.only(top: 5, left: 2, right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          titles[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 152, 171, 9)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          'Details...',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index % 3 == 0 ? 1.8 : 1.2);
            }),
      ),
    );
  }
}
