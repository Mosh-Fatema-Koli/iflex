
import 'package:flutter/material.dart';
import 'package:iflex/app/modules/more/views/more_view.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 130.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(

                title: KText(text: "Need Support?",color: Colors.white,fontSize: 20,),
                centerTitle: true,
                background: Container(
                  color: Colors.blue,
                )
            ),
          ),
          //3
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 1,
                    (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Apputils.sizeH20,
                      KText(text: "Popular Help Topics",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH20,
                      KText(text: "Special pack amount list"),
                      Apputils.sizeH5,
                      KText(text: "Please note that, Telcos can update the below mentioned Special Packs/Bundles Amounts anytime. New amount may get added or removed by operators from existing, which may take some time to update here.",fontSize: 12,),
                      Apputils.sizeH20,
                      Dividerwidget(),
                      Apputils.sizeH20,
                      KText(text: "Money get deducted from bank account but did not get recharge"),
                      Apputils.sizeH5,
                      KText(text: "No need to worry! your money is safe under all circumstances",fontSize: 12,),
                      Apputils.sizeH20,
                      
                      KText(text: " Call Center",fontSize: 20,color: Colors.blue,),




                    ],
                  ),
                )

            ),
          ),
        ],
      ),
    );
  }
}
