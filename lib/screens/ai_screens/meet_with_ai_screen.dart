import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/app_theme.dart';
import '../../constants/app_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/size_config.dart';
import 'individual_ai_chat.dart';

class WithAllCategoryScreen extends StatefulWidget {
  const WithAllCategoryScreen({super.key});

  @override
  State<WithAllCategoryScreen> createState() => _WithAllCategoryScreenState();
}

class _WithAllCategoryScreenState extends State<WithAllCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: AppTheme.whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: customNormalText(
              inputText: 'Meet With AI',
              fontSize: 32,
              weight: FontWeight.w800,
              colorName: AppTheme.blackColor),
        ),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(45),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                          const IndividualAiChatScreen(screenType: "Stories"));
                    },
                    child: buildContainer(
                        title: 'Stories', image: AppImages.storyImage),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(32),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const IndividualAiChatScreen(
                          screenType: "Creative Writing"),);
                    },
                    child: buildContainer(
                        title: 'Creative Writing',
                        image: AppImages.creativeImage),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(95),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const IndividualAiChatScreen(screenType: "Poem"));
                    },
                    child: buildContainer(
                        title: 'Poem', image: AppImages.poemImage),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(32),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                          const IndividualAiChatScreen(screenType: "Fiction"));
                    },
                    child: buildContainer(
                        title: 'Fiction', image: AppImages.storyImage),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Container buildContainer({required String title, required String image}) {
    return Container(
      // height: getProportionateScreenHeight(250),
      width: getProportionateScreenWidth(160),
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(14),
          right: getProportionateScreenWidth(14),
          top: getProportionateScreenHeight(25),
          bottom: getProportionateScreenHeight(5)),
      decoration: BoxDecoration(
        color: Color(0xFFFCF8FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          children: [
            customCentreText(
                inputText: title,
                fontSize: 24,
                weight: FontWeight.w500,
                colorName: AppTheme.blackColor),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Image(image: AssetImage(image))
          ],
        ),
      ),
    );
  }
}
