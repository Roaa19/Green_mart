import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/core/style/text_style.dart';
import 'package:greenmart/core/widget/build_image.dart';
import 'package:greenmart/core/widget/main_button.dart';
import 'package:greenmart/feature/home/data/product_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.file_upload_outlined)),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * .3,
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(30),
                child: BuildImage(path: model.image),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right:15,left: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                              ),
                            ),
                            Text(
                              model.quantityForPrice,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.favorite_border_rounded, color: Colors.grey),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.remove, color: Colors.grey),
                        SizedBox(width: 30),
                        Text(
                          "1",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30),
                        Icon(Icons.add, color: Colors.green),
                
                        Spacer(),
                
                        Text(
                          "\$4.99",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17),
                    Divider(),
                    SizedBox(height: 17),
                    ExpansionTile(
                      title: Text('Product Detail', style: TextStyles.subtitle),
                      childrenPadding: EdgeInsets.zero,
                      tilePadding: EdgeInsets.zero,
                      children: [
                        Text(
                          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                          style: TextStyles.caption1.copyWith(color: AppColor.grey),
                        ),
                      ],
                    ),
                
                    SizedBox(height: 17),
                    Divider(),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Nutritions",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    SizedBox(height: 17),
                    Divider(),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text('Reviews', style: TextStyles.subtitle),
                        Spacer(),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 24,
                          itemBuilder: (context, _) =>
                              Icon(Icons.star, color: Colors.amber),
                          onRatingUpdate: (rating) {},
                        ),
                        Icon(Icons.chevron_right_rounded, size: 30),
                      ],
                    ),
                    ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(child: MainButton(text: "Add To Cart", onPressed: (){}),),
    );
  }
}
