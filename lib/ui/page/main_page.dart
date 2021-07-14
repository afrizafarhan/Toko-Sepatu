import 'package:flutter/material.dart';
import 'package:toko_sepatu/ui/page/draft_page.dart';
import 'package:toko_sepatu/ui/widget/card_sepatu_latest.dart';
import 'package:toko_sepatu/ui/widget/card_sepatu_main.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DraftPage(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Maul Shoes",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                width: screenSize.width,
                height: 30,
                child: categorySlide(['Men Shoes', 'Women Shoes', 'Kids']),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height / 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardSepatu(
                      title: (index == 1) ? "Nike Air Max 90" : "Ultraboost Shoes",
                      subtitle: (index == 1) ? "Selop ke mesjid" : "Mens Running",
                      price: 180.00,
                      shoeColor: [
                        Colors.black,
                        Colors.red,
                        Colors.green,
                        Colors.yellow
                      ],
                      imageURL:
                          (index == 1) ? "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/b12fa6b8-aae9-40fe-a2f6-c0a18c6a1153/air-max-90-slide-bPJh33.png" : "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/f63d8396-bbf6-4711-9f94-ebc0014b8fd4/air-force-1-07-lv8-shoe-ldZ4Ml.png",
                    );
                  },
                  itemCount: 2,
                ),
              ),
              SizedBox(
                height: screenSize.height / 55,
              ),
              CardSepatuLatest(
                latestShoeImageURL: [
                  'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/10e077db-aa6b-4b75-921d-2d0469300915/waffle-one-shoe-1SFQwJ.png',
                  'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/1f8f79f8-4e07-4d6c-bbdd-ec974833fcc1/air-force-1-07-lv8-shoe-27Bnvv.png',
                  'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/9055531b-45f5-4b0a-beb9-7e3a41b57065/air-max-96-2-se-shoe-mf60w3.png',
                  'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/f010bdd4-8837-412d-8bca-afa14f0ddfbd/zion-1-pf-basketball-shoe-bHGvxg.png'
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget categorySlide(List<String> category) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text(category[index]);
      },
      itemCount: category.length,
    );
  }
}
