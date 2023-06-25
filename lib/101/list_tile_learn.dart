import 'package:flutter/material.dart';
import 'package:flutter_demo/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl = 'https://picsum.photos/200/300';
  //random image'den aldik.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                //title: Text('My Card'),
                title:
                    RandomImage(), //Image.network(imageUrl,height: 100,fit: BoxFit.cover),
                dense: true, // olabildigince sikistiri  p paddingleri siliyor.
                //contentPadding: EdgeInsets.zero, bu degeri mainde theme'ye atadik.
                // dinamik yapabilmek icin padding degerleri
                //disaridan alinmali. O yuzden bunu zero atayip saga sola yapistiriyoruz iyice.
                onTap: () {},
                subtitle: const Text('How do you use your card?'),
                leading: Container(
                    height: 100,
                    width: 40,
                    alignment: Alignment.bottomCenter,
                    color: Colors.red,
                    child: const Icon(Icons.money)),
                trailing: Container(
                  width: 20,
                  color: Colors.red,
                  child: const SizedBox(
                      width: 20, child: Icon(Icons.chevron_right)),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
