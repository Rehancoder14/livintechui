import 'package:flutter/material.dart';
import 'package:livintecchui/component/post_widget.dart';
import 'package:livintecchui/constant.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackLight : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        foregroundColor: isDark ? Colors.white : AppColors.blackLight,
        leading: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
            backgroundImage: AssetImage(
              'assets/female.png',
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30,
              ),
              border: Border.all(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            child: const Icon(Icons.notification_important_outlined),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 8, top: 8),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30,
              ),
              color: isDark ? Colors.black : Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: isDark ? Colors.white : Colors.black,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
              border: Border.all(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/coin.png',
                ),
                const Text(
                  '1200  ',
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'Jessica',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: isDark ? Colors.white : Colors.black,
                    spreadRadius: 0.2,
                    // blurRadius: 1,
                    offset: Offset(3, 4), // changes position of shadow
                  ),
                ],
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelStyle:
                      TextStyle(color: isDark ? Colors.white : Colors.black),
                  hintStyle:
                      TextStyle(color: isDark ? Colors.white : Colors.black),
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  filled: true,
                  fillColor: isDark ? Colors.grey.shade800 : Colors.white,
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return const PostWidget(
                    image: true,
                    text: 'Hey whatsapp!\nCheckout these pic from last event',
                  );
                }
                return const PostWidget(
                  image: false,
                  text:
                      "Another epic girls' night in the books! Last night was all about laughter, good vibes, and unforgettable memories! ",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
