import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardSepatu extends StatelessWidget {
  final String title, subtitle, imageURL;
  final double price;
  final List<Color> shoeColor;

  // *[title] = Masukan nama sepatu
  // *[subtitle] = Masukan keterangan singkat tentang sepatu
  // *[imageURL] = Masukan URL gambar sepatu
  // *[price] = Masukan harga sepatu
  // *[shoeColor] = Masukan daftar warna sepatu
  CardSepatu(
      {this.title, this.subtitle, this.imageURL, this.price, this.shoeColor});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(left: screenSize.width /40),
        width: screenSize.width / 1.32,
        decoration: BoxDecoration(
          color: Color(0XFFf6f6f6),
          boxShadow: [
            BoxShadow(
                blurRadius: 20, color: Colors.black38, offset: Offset(3, 6)),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                  ),
                ),
              ),
              Container(
                height: (screenSize.height / 4) / 1.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      imageURL,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              Text(subtitle),
              SizedBox(
                height: (screenSize.height / 1.6) / 14,
              ),
              Row(
                children: [
                  Text(
                    "\$" + price.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    width: screenSize.width / 6.8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Colors"),
                      SizedBox(width: 5),
                      Container(
                        width: (screenSize.width - 100) / 4,
                        height: 20,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(right: 6),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: shoeColor[i]),
                              ),
                            );
                          },
                          itemCount: shoeColor.length,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
