import 'package:dinedash/Models/restaurant.dart';
import 'package:dinedash/Pages/my_recipt.dart';
import 'package:dinedash/Services/Database/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

  // get access to database
  FirestoreService db = FirestoreService();

  @override
  void initState(){
    super.initState();

    // if we get to this page then just submit the order to firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderDatabase(receipt);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyRecipt()
        ],
      ),
    );
  }

  // custom Bottom nav bar - Massege / call delivery details
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
      ),
      ),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [

          // Profile pic of the driver
          Container(decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
          shape: BoxShape.circle,
          ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.person),
            ),
          ),

          // driver details
          SizedBox(width: 10),

          //massege button
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sara",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text("Driver",style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),),
            ],
          ),
          const Spacer(),


          Row(
            children: [
              // massege button
              Container(decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
              ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(width: 10),

              // call button
              Container(decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
              ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          )

        ],
      ),

    );
  }
}
