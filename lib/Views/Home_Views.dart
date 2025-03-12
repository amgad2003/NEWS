import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_cloud/Widget/Custom_Frist_Container.dart';
import 'package:news_cloud/Widget/Custom_Last_Coulmn.dart';
import 'package:news_cloud/Widget/Custom_Title_AppBar.dart';
class HomeView extends StatelessWidget {
   HomeView({super.key,});
  final List <Map<String,String>> news =[
    {
      'title' : 'علنت الشرط الأميركية، الأربعاء، إصابة شخص بطلق ناري بعدما قفز كلبه من على سريره وشغل مسدسا محشوا بالصدفة.',
      'subTitle': 'وكان الرجل، وهو من مدينة ممفيس بولاية تينيسي، نائما بجانب شريكته عندما أطلق عليه النار، صباح الإثنين، لكن إصابته اقتصرت على جرح في الفخذ الأيسر تمت معالجته في المستشفى.',
      'path' : 'image/AmericalPolice.jpg'
    },
    {
      'title' : 'أفادت وسائل إعلام إيرانية، الأربعاء، بأن دولة الإمارات سلّمت طهران رسالة من الرئيس الأميركي دونالد ترامب.',
      'subTitle': 'وقال المتحدث باسم وزارة الخارجية الإيرانية (https://www.skynewsarabia.com/keyword-search?keyword) إن المستشار الدبلوماسي لرئيس دولة الإمارات، أنور قرقاش، سلم الرسالة.',
      'path' : 'image/EmaUAE.jpg'
    },{
      'title' : 'الرئيس الروسي فلاديمير بوتين، الأربعاء، منطقة كورسك التي تتعرض لهجوم من القوات الأوكرانية، ودعا إلى هزيمة كييف بشكل كامل.',
      'subTitle': 'وأمر بوتين (https://www.skynewsarabia.com/keyword-search?keyword)، الذي كان يرتدي الزي العسكري خلال زيارة كورسك، بإيلاء اهتمام خاص لإنشاء منطقة أمنية على طول الحدود الروسية الأوكرانية (https://www.skynewsarabia.com/keyword-search?keyword).',
      'path' : 'image/Russia.jpg'
    },{
      'title' : 'قالت ستة مصادر لوكالة رويترز، الأربعاء، إن الولايات المتحدة شجعت حلفاءها الأكراد السوريين على التوصل إلى اتفاق تاريخي يوم الإثنين مع السلطات في دمشق. ',
      'subTitle': 'ويمهد الاتفاق الطريق للقوات التي يقودها الأكراد، للاندماج مع دمشق، إلى جانب هيئات حاكمة كردية إقليمية.',
      'path' : 'image/Syria.jpg'
    },{
      'title' : 'كارثة إلكترونية.. 10 مليارات "باسورد" أصبحت بأيدي القراصنة',
      'subTitle': 'التسريب العملاق يحمل الاسم (RockYou2024) وأصبح متاحاً على الإنترنت اعتباراً من يوم الرابع من يوليو الحالي',
      'path' : 'image/news.png'
    },{
      'title' : 'علّق رافينيا على أداء برشلونة في مباراته أمام بنفيكا بدوري أبطال أوروبا، يوم الثلاثاء، والتي انتهت بفوز النادي الكتالوني بنتيجة 3-1.',
      'subTitle': 'وسجل رافينيا هدفين وأضاف لامين يامال هدفا مذهلا في غضون أول 45 دقيقة ليقودا برشلونة المتألق لفوز كبير 3-1 على بنفيكا في إياب دور الستة عشر لدوري أبطال أوروبا لكرة القدم والتأهل إلى دور الثمانية بفوزه 4-1 في مجموع المباراتين.',
      'path' : 'image/Barcelone.jpg'
    },{
      'title' : 'واصل بوروسيا دورتموند الألماني مسيرته في بطولة دوري أبطال أوروبا لكرة القدم، عقب تأهله لدور الثمانية في المسابقة القارية. ',
      'subTitle': 'واقتنص دورتموند (https://www.skynewsarabia.com/keyword-search?keyword) انتصارا ثمينا 2 / 1 من ملعب مضيفه ليل الفرنسي، الأربعاء، في إياب دور الـ16 للبطولة القارية، التي توج بلقبها عام 1997 ونال وصافتها عامي 2013 و2024',
      'path' : 'image/Borussia.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: titleAppBar(),
      body:  Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: news.length,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: fristContainer(
                          image: news[index]['path'],
                          title: news[index]['title'],),
                    );
                  },),
              ),
              SizedBox(height: 22),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: news.length,
                  itemBuilder: (context, index) {
                    return lastCoulmn(
                        image: news[index]['path'], title: news[index]['title'], suTitle: news[index]['subTitle']);
                  },),
              ),
            ]
          ),
        ),
      )
    );
  }
}