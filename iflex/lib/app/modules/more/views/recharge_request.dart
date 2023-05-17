
import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class RechargeRequestPage extends StatelessWidget {
  const RechargeRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              labelColor: Colors.blue[900],
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10),
            tabs: [
              Tab(text: "REQUEST RECEIVED",),
              Tab(text: "RECEIVED HISTORY",)
            ]
          ),
          title: KText(
            text: "Recharge Request",color: Colors.white,fontSize: 16,
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
          ],
        ),
      ),
    );
  }
}
