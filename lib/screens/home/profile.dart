// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile ',
        ),
      ),
      body: Column(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                ),
                Positioned(
                    bottom: -50.0,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: NetworkImage(
                            'https://scontent.ftun7-1.fna.fbcdn.net/v/t39.30808-6/s552x414/255729438_2061962933967301_6536194202848894171_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=8WN5tCaKhNQAX8wbDdB&_nc_ht=scontent.ftun7-1.fna&oh=00_AT-vQcebr_3_dyt5y7xkSu5mO6tTdZSL7pr80y15zU8aOQ&oe=61CD0B9D'),
                      ),
                    ))
              ]),
          SizedBox(
            height: 45,
          ),
          ListTile(
            title: Center(child: Text('Junaid')),
            subtitle: Center(child: Text('Village Incharge')),
          ),
          ListTile(
            title: Text('Mandal: '),
            subtitle: Text('Kankipadu'),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Phone Number'),
            subtitle: Text('9866581615'),
          ),
          ListTile(
            title: Text('Aadhar Number'),
            subtitle: Text('4311 3131 1111 2222'),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
