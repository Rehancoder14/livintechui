import 'package:flutter/material.dart';
import 'package:livintecchui/constant.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? AppColors.blackLight : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.blackLight : Colors.white,
        foregroundColor: isDark ? Colors.white : AppColors.blackLight,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'My Rewards',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 200,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/bgwave.png',
                      ),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(3, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '293',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/coin.png',
                        ),
                        const Text(
                          ' Coins',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                )),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return _listCard();
                }),
          ],
        ),
      ),
    );
  }

  Widget _listCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
            side: const BorderSide(color: Colors.grey)),
        leading: Image.asset(
          'assets/gift.png',
          height: 35,
          color: isDark ? Colors.white : Colors.black,
          width: 35,
        ),
        title: const Text(
          'Daily Check Bonus',
          style: TextStyle(
            color: isDark ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
        subtitle: const Text(
          '11:24 pm Monday 18, mar 2024',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        trailing: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/coin.png',
                  height: 30,
                  width: 30,
                ),
                const Text(
                  '+140',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
