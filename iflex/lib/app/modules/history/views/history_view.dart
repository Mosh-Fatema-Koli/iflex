import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/history/views/30days_history.dart';
import 'package:iflex/app/modules/history/views/6months_history.dart';
import 'package:iflex/app/modules/history/views/7days_history.dart';
import 'package:iflex/app/modules/history/views/all_history.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
              labelColor: Colors.blue[900],
              unselectedLabelColor: Colors.grey[900],
              labelStyle: TextStyle(fontSize: 10),
              tabs: [
                Tab(text:'7 DAYS' ),
                Tab(text:'30 DAYS' ),
                Tab(text:'6 MONTHS' ),
                Tab(text:'ALL' ),
              ]
          ),
          title: KText(
            text: "TRANSACTION HISTORY",fontSize: 14,
          ),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month),color: Colors.blue[900],)
          ],
        ),
        body: TabBarView(
          children: [
            SevendaysHistory(),
            ThirtyDaysHistory(),
            SixMonthsHistory(),
            AllHistoryPage()
          ],
        ),
      ),
    );

  }
}
