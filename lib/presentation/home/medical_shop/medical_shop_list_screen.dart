import 'package:flutter/material.dart';
import 'package:flutter_medicare/presentation/home/medical_shop/shop_rows.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../../../common/color_extension.dart';

class MedicalShopListScreen extends StatefulWidget {
  const MedicalShopListScreen({super.key});

  @override
  State<MedicalShopListScreen> createState() => _MedicalShopListScreenState();
}

class _MedicalShopListScreenState extends State<MedicalShopListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          "Medical Shop List",
          style: TextStyle(
            color: TColor.primaryTextW,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              itemBuilder: (context, index) {
                return ShopRow(onPressed: () {}, obj: {});
              },
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: const Divider(
                  color: Colors.black12,
                  height: 1,
                ),
              ),
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
