import 'package:apk_wisata/main_screen.dart';
import 'package:apk_wisata/model/wisata_place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('place.Size: ${MediaQuery.of(context).size.width}'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrain) {
            if(constrain.maxWidth <= 600){
              return MainScreen();
            }else {}
            return MainScreen();
          },
        )
    );
  }
}


class DetailScreen extends StatelessWidget {
  late final wisataPlace placedetail;

  DetailScreen({required this.placedetail});

  var fontOxygen = TextStyle(fontFamily: 'Oxygen', fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wisata")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    placedetail.ImageAssets,
                    width: 300,
                    height: 200,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                //untuk balik tp di mainactivity nya bukan di appbarr
                                // Navigator.pop(context);
                              }),
                        ],
                      ),
                    ),
                  ),
                  FavoriteButton()
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  placedetail.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Staatliches'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(
                          placedetail.opendays,
                          style: fontOxygen,
                        ),
                        SizedBox(height: 8)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text(placedetail.opentime, style: fontOxygen),
                        SizedBox(height: 8)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text(placedetail.ticketprice, style: fontOxygen),
                        SizedBox(height: 8)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  placedetail.desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: placedetail.imageUrls.map((urlgambar) {
                      return Padding(
                        padding: EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(urlgambar),
                        ),
                      );
                    }).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
