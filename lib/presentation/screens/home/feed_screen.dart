import 'package:flutter/material.dart';
import 'package:ostello/core/extension.dart';
import 'package:ostello/core/ui.dart';
import 'package:ostello/presentation/widgets/custom_box.dart';
import 'package:ostello/presentation/widgets/custom_button.dart';
import 'package:ostello/presentation/widgets/custom_carousel.dart';
import 'package:ostello/presentation/widgets/custom_drop_down.dart';
import 'package:ostello/presentation/widgets/custom_searchbar.dart';
import 'package:ostello/presentation/widgets/gap_widget.dart';
import 'package:ostello/presentation/widgets/selected_button.dart';
import 'package:ostello/presentation/widgets/shorts_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GapWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomSearchbar(),
              Container(
                width: context.width() * 0.24,
                height: context.height() * 0.05,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    color: AppColors.accent,
                    border: Border.all(width: 1, color: AppColors.accent),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Study',
                    style:
                        TextStyles.body1.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          const GapWidget(),
          SizedBox(
            height: context.height() * 0.30,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const CustomBox(
                  iconName: 'assets/cr1.png', title: 'Carrer Trends'),
            ),
          ),
          const GapWidget(),
          CustomCarouselSlider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '  Recommended for you',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 18.91 / 16,
                    color: Color(0xFF272A34),
                  ),
                ),
                SizedBox(
                  height: context.height() * 0.25,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => const ShortsWidhget(
                        iconName: 'assets/pic.png', title: 'Carrer Trends'),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                '''Find the best Coach to help you with your 10th Class''',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,
                    fontWeight: FontWeight.w800)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const CustomDropdown(),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/Line.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: SelectedButton(title: 'Subjects'),
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // Prevent ListView from scrolling inside the Row
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ongoing Classes',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Stack(
              children: [
                Image.asset('assets/pImage.png'),
                Positioned(
                  left: context.width() * 0.75,
                  top: 10,
                  child: Image.asset('assets/Live.png'),
                ),
                Positioned(
                    top: context.height() * 0.17,
                    left: context.width() * 0.75,
                    child: Container(
                      padding: const EdgeInsets.all(8.0), // Optional padding
                      decoration: BoxDecoration(
                        color: Colors.black, // Black background
                        borderRadius: BorderRadius.circular(
                            8.0), // Optional rounded corners
                      ),
                      child: const Text(
                        '47:08',
                        style: TextStyle(
                          color: Colors.white, // White text color
                          fontSize: 16.0, // Adjust the font size as needed
                          fontWeight:
                              FontWeight.bold, // Optional: make the text bold
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Image.asset('assets/Ellipse.png'),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Physics - 10th Class',
                    style: TextStyles.heading3.copyWith(color: AppColors.text),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [   
                      Text(  
                        ' Faculty Name',
                        style: TextStyles.heading3.copyWith(
                            color: const Color(0xFF4F4F4F),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/tick.png')
                    ],
                  ),
                  const Text(
                    ' 476K views . 3 days ago',
                    style: TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ), const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
          const GapWidget(),
          Row(children: [  Image.asset('assets/pImage.png' ,width: context.width()*0.45,fit: BoxFit.fitHeight,),  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '''Physics - 10th\n Class''',
                      style: TextStyles.heading3.copyWith(color: AppColors.text, fontWeight: FontWeight.w700, fontSize: 21),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [   
                        Text(  
                          ' Faculty Name',
                          style: TextStyles.heading3.copyWith(  
                              color: const Color(0xFF4F4F4F),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/tick.png')
                      ],
                    ),
                    const Text(
                      ' 476K views . 3 days ago',
                      style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
          ),],), CustomButton(title: 'View More Class', onPressed: (){})
        ],  
      ),
    );
  }
}
