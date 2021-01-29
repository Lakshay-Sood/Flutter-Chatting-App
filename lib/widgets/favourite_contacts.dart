import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    letterSpacing: 1.0
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10.0),
              itemCount: favourites.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favourites[index].imageUrl),
                      ),
                      SizedBox(height: 6.0,),
                      Text(
                        favourites[index].name,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                );
              }),
          )
        ],
      ),
    );
  }
}
