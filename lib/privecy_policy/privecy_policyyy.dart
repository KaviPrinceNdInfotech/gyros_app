import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/privecy_policy_controller/privecy_policy_controlers.dart';
import 'package:sizer/sizer.dart';

class PrivecyPolicy extends StatelessWidget {
  PrivecyPolicy({Key? key}) : super(key: key);

  PrivecyPolicyController _privecyPolicyController =
      Get.put(PrivecyPolicyController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Privacy Policy',
          style: TextStyle(
              color: AppColors.themecolors, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
              // _homePageController.toggle(index);
              //Get.to(() => WalkTracking());
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: AppColors.themecolors,
            )),
      ),
      body: Obx(
        () => _privecyPolicyController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : _privecyPolicyController.privecypolicyModel == null
                ? Center(
                    child: Text('No Data'),
                  )
                : SafeArea(
                    child: Container(
                      height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                _privecyPolicyController
                                    .privecypolicyModel!.result!.privacy
                                    .toString(),
                                // """This Privecy Policy describes how your personal informatioon is collected, used, and shared when you vidsit or make a purchase from www.gyros.com(the "Site")""",
                                style: GoogleFonts.raleway(
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
//                               Text(
//                                 'Personal information we collect',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """When you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device. Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically-collected information as “Device Information """,
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'We collect Device Information using the following technologies :',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.circle,
//                                     size: 8,
//                                   ),
//                                   SizedBox(
//                                     width: size.width * 0.90,
//                                     child: Text(
//                                       """“Cookies” are data files that are placed on your device or computer and often include an anonymous unique identifier. For more information about cookies, and how to disable cookies, visit http://www.allaboutcookies.org.""",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 8.sp,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.circle,
//                                     size: 8,
//                                   ),
//                                   SizedBox(
//                                     width: size.width * 0.90,
//                                     child: Text(
//                                       """“Log files” track actions occurring on the Site, and collect data including
// your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps. - “Web beacons”, “tags”, and “pixels” are electronic files used to record information about how you browse the Site.""",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 8.sp,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'How do we use your personal information ?',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.circle,
//                                     size: 8,
//                                   ),
//                                   SizedBox(
//                                     width: size.width * 0.90,
//                                     child: Text(
//                                       """“Log files” track actions occurring on the Site, and collect data including
// your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps. - “Web beacons”, “tags”, and “pixels” are electronic files used to record information about how you browse the Site.""",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 8.sp,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.circle,
//                                     size: 8,
//                                   ),
//                                   SizedBox(
//                                     width: size.width * 0.90,
//                                     child: Text(
//                                       """“Log files” track actions occurring on the Site, and collect data including
// your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps. - “Web beacons”, “tags”, and “pixels” are electronic files used to record information about how you browse the Site.""",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 8.sp,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.circle,
//                                     size: 8,
//                                   ),
//                                   SizedBox(
//                                     width: size.width * 0.90,
//                                     child: Text(
//                                       """“Log files” track actions occurring on the Site, and collect data including
// your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps. - “Web beacons”, “tags”, and “pixels” are electronic files used to record information about how you browse the Site.""",
//                                       style: GoogleFonts.poppins(
//                                         fontSize: 8.sp,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Sharing you personal Information',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Behavioural advertising',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Do not track',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Your rights',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Data retention',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Changes',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Contact us',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2.h,
//                               ),
//                               Text(
//                                 'Gyros Farm',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 1.h,
//                               ),
//                               Text(
//                                 """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
//                                 style: GoogleFonts.raleway(
//                                   fontSize: 10.sp,
//                                 ),
//                               ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
