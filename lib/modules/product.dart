import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Text('Flutter'),
            Text('Flutter'),
            Text('Flutter'),
          ],
          options: CarouselOptions(
            height: 250,
            initialPage: 0,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildCategoriesItems(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'New Products',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 1 / 1.55,
            children: List.generate(
              1,
              (index) => gridProductItem(context),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCategoriesItems() => Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Text('gfgfgfg'),
        Container(
          color: Colors.black.withOpacity(0.8),
          width: 100,
          child: Text(
            'pl,',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

Widget gridProductItem(context) =>
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Text('fgfg'),
        ],
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'kllkl',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 3,
            ),
          
          ]))
    ]);
