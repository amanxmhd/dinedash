import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(
        context: context, builder: (context)=>
        AlertDialog(
          title: Text("Your Location"),
          content: TextField(
            decoration: const InputDecoration(
                hintText: "Enter Address..."),
          ),
          actions: [
            // cancel button
            MaterialButton(onPressed: ()=> Navigator.pop(context),
            child: Text("cancel"),
            ),

            // save button
            MaterialButton(onPressed: ()=> Navigator.pop(context),
              child: Text("Save"),
            )
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now",
          style: TextStyle(color: Theme.of(context).colorScheme.primary,
          ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(children: [
              // Address
              Text("6351 San Francisco, California(CA)🇺🇸",
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),),

              // drop down menu
              Icon(Icons.keyboard_arrow_down_rounded),
            ],),
          )
        ],
      ),
    );
  }
}
