import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Pastikan keyboard tidak menyebabkan overflow
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); // Perbaikan untuk navigasi
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          "Add Your Card",
          style: TextStyle(
            color: TColor.primaryTextW,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.all(20.0), // Memberikan padding untuk konten
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/card_image.png",
                    width: MediaQuery.of(context).size.width * 0.55,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _buildInputLabel("Cardholder Name"),
              _buildTextField("Enter Name"),
              _buildInputLabel("Card Number"),
              _buildCardNumberFields(),
              _buildInputLabel("Valid Thru"),
              _buildValidThruFields(),
              _buildInputLabel("CVV / CVC"),
              _buildCvvField(),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  // Tambahkan logika saat tombol di-tap
                },
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
                    "Add Card Number",
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
      ),
    );
  }

  Padding _buildInputLabel(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        label,
        style: TextStyle(
          color: TColor.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Container _buildTextField(String hintText) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: TColor.secondaryText, fontSize: 14),
        ),
      ),
    );
  }

  Padding _buildCardNumberFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: List.generate(4, (index) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "_ _ _ _",
                  hintStyle:
                      TextStyle(color: TColor.secondaryText, fontSize: 14),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Padding _buildValidThruFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Month",
                  hintStyle:
                      TextStyle(color: TColor.secondaryText, fontSize: 14),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Year",
                  hintStyle:
                      TextStyle(color: TColor.secondaryText, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildCvvField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            width: 100,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "CVV/CVC",
                hintStyle: TextStyle(color: TColor.secondaryText, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            "3 or 4 digit code",
            style: TextStyle(
              color: TColor.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
