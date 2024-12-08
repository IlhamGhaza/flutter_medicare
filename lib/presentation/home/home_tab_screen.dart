import 'package:flutter/material.dart';
import 'package:flutter_medicare/common_widget/category_button.dart';
import '../../common/color_extension.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List categoryArr = [
    {
      "title": "Heart Issue",
      "icon": "assets/img/heart.png",
    },
    {
      "title": "Lung Issue",
      "icon": "assets/img/lung.png",
    },
    {
      "title": "Cancer Issue",
      "icon": "assets/img/cancer.png",
    },
    {
      "title": "Sugar Issue",
      "icon": "assets/img/sugar.png",
    },
    // {
    //   "title": "Bone Issue",
    //   "icon": "assets/img/bone.png",
    // },
    // {
    //   "title": "Skin Issue",
    //   "icon": "assets/img/skin.png",
    // },
  ];
  List adsArr = [
    {
      // "title": "Ad 1",
      "image": "assets/img/ad_1.png",
    },
    {
      // "title": "Ad 2",
      "image": "assets/img/ad_2.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                itemBuilder: (context, index) {
                  var obj = categoryArr[index];
                  return CategoryButton(
                    title: obj["title"],
                    icon: obj["icon"],
                    onPressed: () {},
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemCount: categoryArr.length,
              ),
            ),
            Container(
              // color: Colors.white,
              height: context.width * 0.5,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                itemBuilder: (context, index) {
                  var obj = adsArr[index];
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          obj["image"],
                          width: context.width * 0.05,
                          height: context.width * 0.44,
                          fit: BoxFit.cover,
                        ),
                      ));
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                itemCount: adsArr.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
