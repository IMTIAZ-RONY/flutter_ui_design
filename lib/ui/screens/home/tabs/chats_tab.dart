import 'package:flutter/material.dart';

import '../../../../chat_map.dart';
import '../../../../utils/color.dart';

class ChatsTab extends StatefulWidget {
  const ChatsTab({super.key});

  @override
  State<ChatsTab> createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: chatUsers.length,
        itemBuilder: (context, index) {
          final user = chatUsers[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                user['profile_picture'] ?? "No image",
              ),
            ),
            title: Text(
              user['name'] ?? "No name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            subtitle:
            user["unread_count"] > 0
                ? Text(
              user['last_msg'] ?? "No message",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
                : Row(
              children: [
                //FaIcon(FontAwesomeIcons.check, color: Colors.blue,size: 20, ),
                Icon(Icons.check, color: Colors.blue, size: 20),
                SizedBox(width: 4),
                // Adding space between icon and text
                Expanded(
                  child: Text(
                    user['last_msg'] ?? "No message",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  user['last_msg_time'] ?? "No time",
                  style: TextStyle(
                    fontSize: 12,
                    color:
                    user["unread_count"] == 0
                        ? Colors.grey
                        : AppColors.dateTimeColor,
                  ),
                ),
                SizedBox(height: 5),

                /// Ternary operator (condition ? true : false) use kore
                user["unread_count"] == 0
                    ? const SizedBox()
                    : Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppColors.boxColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      user['unread_count'].toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                /// Same work now we completed by if else condition

                /* if(user["unread_count"]==0)
                        SizedBox()
                      else Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            user['unread_count'].toString() ?? "0",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      )*/

                ///Same work again with only if

                /* if(user["unread_count"]>0) Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            user['unread_count'].toString() ,
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),*/

                ///spread operator(Multiple widget add korar jonno)

                /* if(user["unread_count"]>0)...[
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              user['unread_count'].toString() ?? "0",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(child: Icon(Icons.remove_red_eye_outlined,size:20 ,)),
                      ]*/
              ],
            ),
          );
        },
      ) ,
    );
  }
}
