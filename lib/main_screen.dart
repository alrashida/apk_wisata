import 'package:apk_wisata/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:apk_wisata/model/wisata_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class Listwisata extends StatelessWidget {
  const Listwisata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('place.Size : ${MediaQuery.of(context).size.width}'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final wisataPlace place = wisataplaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    placedetail: place,
                  );
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          place.ImageAssets,
                          width: 200,
                        )),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              place.name,
                              style:
                                  TextStyle(fontFamily: 'oxygen', fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(place.lokasi),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: wisataplaceList.length,
        ));
  }
}
class GridWisata extends StatelessWidget {
  const GridWisata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 4,
        children: [],
      ),
    );
  }
}
