import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.network(
          'https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png',
          width: 100,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            StoriesTape(),
            PostsTape(),
          ],
        ),
      ),
    );
  }
}

class StoriesTape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCY81_BfiTTB3TxrkdyB1ECC95we01twPPyJjJ1fQ6w-RMez9I5egO_70arnxr8PpjMTM&usqp=CAU'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Skylar $index'),
                  )
                ],
              ),
            );
          }),
    );
  }
}

class PostsTape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 232,
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                ListTile(
                  title: Text('John Makarty'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/OOjs_UI_icon_userAvatar-constructive.svg/1024px-OOjs_UI_icon_userAvatar-constructive.svg.png'),
                  ),
                ),
                Image.network(
                  'https://image.shutterstock.com/image-photo/headlight-modern-prestigious-car-close-600w-1647122392.jpg',
                  width: MediaQuery.of(context).size.width - 40,
                  height: 300,
                ),
              ],
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
