
import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 150.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
             title: KText(text: "Tearm Of Use",color: Colors.white,fontSize: 20,),
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
                      KText(text: "Acceptance of Agreement",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "You agree to the terms and conditions outlined in this Terms of Use Agreement with respect to our site. This Agreement constitutes the entire and only agreement between us and you, and supersedes all prior or contemporaneous agreements, representations, warranties and understandings with respect to the Site, the content, products or services provided by or through the Site, and the subject matter of this Agreement. This Agreement may be amended at any time by us from time to time without specific notice to you. The latest Agreement will be posted on the Site, and you should review this Agreement prior to using the Site.",fontSize: 12,),
                      Apputils.sizeH20,
                      KText(text: "Website Materials",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "The contents of this Website, including but not limited to: text, graphics, illustrations, logos, software, trademarks, service marks and other material ('Material') are protected by copyright and other applicable laws. SSL authorizes you to view the Material on the Website solely for your personal, non-commercial use. You may not sell or modify the Material or reproduce, display, distribute, or otherwise use the Material in any way for any public or commercial purpose without the written permission of SSL. If you violate any of these Terms, your permission to use the Material automatically terminates and you must immediately destroy any copies of the Material you have made",fontSize: 12,),
                      Apputils.sizeH20,

                      KText(text: "Intellectual Property Information",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "This Web Site and the information it contains, or may in the future contain, such as articles, opinions, other text, directories, guides, photographs, illustrations, images, video and audio clips and advertising copy (collectively, the 'Content'), as well as the trademarks, logos, domain names, trade names, service marks and any and all copyrightable material and/or any other form of intellectual property (collectively, the 'Intellectual Property') are owned by Software Shop Limited or other third parties and are protected from unauthorized use, copying and dissemination by copyright, trademark, publicity and other laws.",fontSize: 12,),
                      Apputils.sizeH20,
                      KText(text: "Privacy",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "SSL's Privacy Policy can be found at 'Privacy Policy'. By using this website, you are consenting to the terms located in the Privacy Policy.",fontSize: 12,),
                      Apputils.sizeH20,

                      KText(text: "Assignment",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "These Terms of Use may not be transferred or assigned by you, but may be assigned by the Company without restriction.",fontSize: 12,),
                      Apputils.sizeH20,
                      KText(text: "Entire Agreement Severability",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "These Terms of Use constitute the entire agreement between you and the Company with respect to this website. If any portion is held invalid or unenforceable, the remaining portions will remain in full force and effect and, if possible, the portion found unenforceable will be construed in a manner consistent with the remaining portions.",fontSize: 12,),
                      Apputils.sizeH20,
                      KText(text: "Return & Refund Policy",fontSize: 20,color: Colors.blue,),
                      Apputils.sizeH10,
                      KText(text: "Any Top-Up and/or Internet Recharge purchased using easy.com.bd is not returnable. Payment is only refundable in the condition that the payment was successfully debited by user’s bank or payment processor but service has not been provided. If payment is debited and service is provided then the respective amount is not refundable.",fontSize: 12,),
                      Apputils.sizeH20,



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
