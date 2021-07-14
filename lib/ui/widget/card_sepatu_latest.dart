import 'package:flutter/material.dart';

class CardSepatuLatest extends StatelessWidget {
  final List<String> latestShoeImageURL;

  CardSepatuLatest({this.latestShoeImageURL});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Latest Shoes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: Text("Show All"))
          ],
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height / 6,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListView.builder(
              itemBuilder: (context, i) {
                print(latestShoeImageURL[i]);
                return Container(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: screenSize.height / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          color: Colors.black26,
                          offset: Offset(0, 3))
                    ],
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(latestShoeImageURL[i]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: latestShoeImageURL.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        )
      ],
    );
  }
}
