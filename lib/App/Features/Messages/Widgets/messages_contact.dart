import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/Messages/Screens/chat_screen.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class MessagesContact extends StatelessWidget {
  const MessagesContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // this is custom list tile that show all messages contact in messages screen
    return ListTile(
      onTap: (){
        MyHelperFunctions.navigateToScreen(context, ChatScreen());
      },
      title: Text('Hemant sahu',style: Theme.of(context).textTheme.titleLarge,),
      subtitle: Text("Hiii"),
      leading: CircleAvatar(
        child: Icon(Icons.person) ,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MyColors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('3',style: Theme.of(context).textTheme.labelLarge,),
          ),
          Text("12:24 AM ")
        ],
      ),
    );
  }
}
