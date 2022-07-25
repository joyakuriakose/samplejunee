import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ProfileListView(),
//   ));
// }

class ProfileListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 35, right: 35),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      ProfileTile(
                        txt: 'Privacy',
                        icon: Icon(
                          Icons.privacy_tip,
                          color: Colors.black,
                        ),
                      ),
                      ProfileTile(
                        txt: 'Purchase history',
                        icon: Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                      ),
                      ProfileTile(
                        txt: 'Help and Support',
                        icon: Icon(
                          Icons.help,
                          color: Colors.black,
                        ),
                      ),
                      ProfileTile(
                        txt: 'Settings',
                        icon: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                      ),
                      ProfileTile(
                        txt: 'Invite a friend',
                        icon: Icon(
                          Icons.person_add,
                          color: Colors.black,
                        ),
                      ),
                      ProfileTile(
                        txt: 'Logout',
                        icon: Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);
  final String txt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
