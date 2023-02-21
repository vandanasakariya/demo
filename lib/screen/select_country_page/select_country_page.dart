import 'package:demo/theam/app_img.dart';
import 'package:demo/theam/app_string.dart';
import 'package:demo/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/demo_controller.dart';
import '../../navigation_utils/size_utils.dart';

class SelectCountryPage extends StatefulWidget {
  const SelectCountryPage({Key? key}) : super(key: key);

  @override
  State<SelectCountryPage> createState() => _SelectCountryPageState();
}

class _SelectCountryPageState extends State<SelectCountryPage> {
  final DemoController demoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: demoController.formKeys,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeUtils.horizontalBlockSize * 2,
                horizontal: SizeUtils.verticalBlockSize * 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 7),
                  child: CustomText(
                    text: AppString.selectCountry,
                    fontSize: SizeUtils.fSize_15(),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: demoController.searchController,
                  decoration: InputDecoration(
                    hintText: AppString.selectCountryHere,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 7),
                  child: CustomText(
                      text: AppString.popularCountries,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeUtils.fSize_15()),
                ),
                _cmmonContainer(image: AppImage.ukimage),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _cmmonContainer({
    String? image,
  }) {
    return Container(
      height: SizeUtils.verticalBlockSize * 10,
      width: SizeUtils.verticalBlockSize * 20,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(height: SizeUtils.verticalBlockSize * 2,
            width: SizeUtils.verticalBlockSize * 3,
            child: Image.asset(image!, height: SizeUtils.verticalBlockSize * 4),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
          ),
          Text("Sg"),
        ],
      ),
    );
  }
}
