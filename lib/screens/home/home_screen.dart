// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light
          ),
          leading: IconButton(
            onPressed: () => {
              print('Menu button is clicked')
            },
             icon: const Icon(
                Icons.menu,
                color: Colors.black54
             )
             ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_pin,
                color: Colors.black54
              ),
              const SizedBox(width: 10),
              Text(
                '15/2 New Texas',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () => {
                print('Notification button clicked')
              }, 
              icon: const Icon(
                Icons.notifications,
                color: Colors.black45
              )
              )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
              ),
              Text(
                'best Outfits for you',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Form(
                  child: TextFormField(
                    onChanged: (value) => {
                      print('new value: $value')
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      hintText: 'Search items...',
                      hintStyle: TextStyle(
                        height: 2.25,
                        fontSize: 16
                      ),
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF67952),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: IconButton(
                          onPressed: () => {},
                          icon: Icon(
                            Icons.tune,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ),
                  ),
                ),
              ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) => 
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CatCard(
                      title: categories[index].title, 
                      pathToIcon: categories[index].pathToIcon),
                  )
                  )
                ),
               )
            ]
          ),
        ),
      );
  }
}

class CatCard extends StatelessWidget {
  const CatCard({super.key, required this.title, required this.pathToIcon});

  final String title, pathToIcon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => {
        print('Category $title selected')
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        side: MaterialStateProperty.all(BorderSide(style: BorderStyle.none))
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              child: SvgPicture.asset(pathToIcon),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0 ,15, 0, 10),
              child: Text(
                title,
                style: Theme.of(context)
                  .textTheme
                  .bodySmall,
              ),
            )
          ],
        ),
        ),
    );
  }
}