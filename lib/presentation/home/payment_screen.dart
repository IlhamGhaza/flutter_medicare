import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import 'add_card_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primaryText,
          ),
        ),
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "Total Bill: ",
              style: TextStyle(color: TColor.primaryText, fontSize: 14),
            ),
            Text(
              " 50\$",
              style: TextStyle(
                color: TColor.primary,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  color: TColor.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Pay Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/img/shop_ic.png",
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Dr.Manish Chutake",
                    style: TextStyle(
                      color: TColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Container(
                width: 25,
                alignment: Alignment.center,
                child: DottedLine(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  lineLength: 30,
                  lineThickness: 1.0,
                  dashLength: 3.0,
                  dashColor: TColor.primaryText,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/img/location.png",
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home Address",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Jakarta ",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  color: Colors.black12,
                  height: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Credit / Debit Cards",
                    style: TextStyle(
                      color: TColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.push(const AddCardScreen());
                    },
                    child: Text(
                      "Add NEW CARD",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Image.asset(
                        "assets/img/card.png",
                        width: 30,
                        height: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "************4356",
                              style: TextStyle(
                                color: TColor.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Manish Chutake",
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Divider(
                    color: Colors.black12,
                    height: 1,
                  ),
                ),
                itemCount: 2,
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  color: Colors.black12,
                  height: 1,
                ),
              ),
              Text(
                "Save and Pay via cards",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 10,
                ),
              ),
              Row(children: [
                Image.asset(
                  "assets/img/master_card.png",
                  width: 50,
                  height: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/img/maestro_card.png",
                  width: 50,
                  height: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/img/visa_card.png",
                  width: 50,
                  height: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}