
import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/view/advance_view/mail_project/layouting/const.dart';

class ProfileUserOne extends StatelessWidget {
  const ProfileUserOne({Key? key}) : super(key: key);
  static String routeName = 'ProfileUserOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar theme for tablet
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {
              //send report to school management, in case if you want some changes to your profile
            },
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                 const Icon(Icons.report_gmailerrorred_outlined),
                  // kHalfWidthSizedBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: 1000,
              height: 100,
              // height: SizerUtil.deviceType == DeviceType.tablet ? 19.h : 15.h,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                // borderRadius: kBottomBorderRadius,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const CircleAvatar(
                    // radius: SizerUtil.deviceType == DeviceType.tablet ? 12.w : 13.w, ,
                    // radius: SizerUtil.deviceType == DeviceType.tablet ? 12.w : 13.w,
                    backgroundColor: kSecondaryColor,
                    backgroundImage:
                        AssetImage('assets/image/snake.jpg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Aisha Mirza',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('Class X-II A | Roll no: 12',
                          style: Theme.of(context).textTheme.subtitle2),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Container(
               width: 100,
              height: 100,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  //  ProfileDetailRow(
                  //     title: 'Registration Number', value: '2020-ASDF-2021'),
                  // ProfileDetailRow(title: 'Academic Year', value: '2020-2021'),
                ],
              ),
            ),
            Container(
               width: 100,
              // height: 100,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  // ProfileDetailRow(title: 'Admission Class', value: 'X-II'),
                  // ProfileDetailRow(title: 'Admission Number', value: '000126'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                   width: 100,
              height: 100,
              color: Colors.red,
                ),
                // ProfileDetailRow(
                //     title: 'Date of Admission', value: '1 Aug, 2020'),
                // ProfileDetailRow(title: 'Date of Birth', value: '3 May 1998'),
              ],
            ),
            sizedBox,
           Container(
            color: Colors.blue,
            //  child: const  ProfileDetailColumn(
            //     title: 'Email',
            //     value: 'aisha12@gmail.com',
            //   ),
           ),


          //  const  ProfileDetailColumn(
          //     title: 'Father Name',
          //     value: 'John Mirza',
          //   ),
          //   const ProfileDetailColumn(
          //     title: 'Mother Name',
          //     value: 'Angelica Mirza',
          //   ),
          //  const ProfileDetailColumn(
          //     title: 'Phone Number',
          //     value: '+923066666666',
          //   ),
          ],
        ),
      ),
    );
  }
}