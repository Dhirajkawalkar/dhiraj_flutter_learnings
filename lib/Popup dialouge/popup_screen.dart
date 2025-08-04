import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popup_dialouge/Popup%20dialouge/list_widgets.dart';
import 'package:popup_dialouge/Popup%20dialouge/extra/test_main.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'extra/journey_list.dart';
import 'package:dash/dash.dart';

class PopupScreen extends StatefulWidget {
  const PopupScreen({super.key});

  @override
  State<PopupScreen> createState() => _PopupScreenState();
}

class _PopupScreenState extends State<PopupScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff585b5e),
                Color(0xff494e50),
              ])
          ),

          child: Center(

              child: Stack(
                children: [
                  //Main Ui
                  Container(
                    height: 621.h,
                    width: 312.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffFAF0E8)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Text("Add parcel to your route?", style: TextStyle(fontSize: 22.sp, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: Color(0xffCD4E00)), ),

                          SizedBox(height: 16.h,),

                          Text("Please review the new journey of this parcel if you add it to yours.", style: TextStyle(fontSize: 14.sp, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp),),

                          SizedBox(height: 16.h,),

                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Not sure? ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Please confirm with your Operations Manager before proceeding.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 16.h,),
                          DottedLine(
                            dashColor: Color(0xffEFD7C3),
                          ),

                          SizedBox(height: 16.h,),

                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Parcel barcode", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),)
                          ),

                          SizedBox(height: 5.h,),

                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("123456klh90", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff148D14),))
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Row(
                                  children: [
                                    Icon(Icons.person),


                                    SizedBox(width: 6.w,),

                                    Text("CNH inustrial", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),)
                                  ],
                                ),
                              ),

                              SizedBox(width: 8.w,),

                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text("|"),
                              ),

                              SizedBox(width: 8.w,),

                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                       child: Icon(Icons.location_on_outlined, size: 20.sp, color: Color(0xFF0E3B2C)),

                                    ),
                                    SizedBox(width: 6.w),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "4149 39TH STREET, ABT4V 3X8",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF0E3B2C),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 24.h,),

                          Container(
                            height: 46.h,
                            width: 280.w,
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "New Journey",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffCD4E00),
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 0.2.h), // spacing between text and line
                                  Container(
                                    width: 12.w, // adjust width as needed
                                    height: 2.h,
                                    color: Color(0xffCD4E00),
                                  ),
                                ],
                              ),
                            ),
                          ),


                          // Container(
                          //   height: 46.h,
                          //   width: 280.w,
                          //   padding: EdgeInsets.symmetric(vertical: 12.h),
                          //
                          //   decoration: BoxDecoration(
                          //       color: Color(0xffFFFFFF),
                          //       borderRadius: BorderRadius.circular(6)
                          //   ),
                          //
                          //   child: Center(
                          //       child: Column(
                          //         children: [
                          //           Text("New Journey", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xffCD4E00), fontSize: 14.sp),),
                          //         ],
                          //       )
                          //   ),
                          // ),

                          SizedBox(height: 2.h,),

                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 8, top: 6),
                                    height: 900.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x4DFFFFFF),
                                      borderRadius: BorderRadius.circular(6),
                                    ),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.warning, color: Color(0xffCD4E00), size: 12.sp,),

                                            SizedBox(width: 6.w,),

                                            Text("Updated Parcel Journey If Added to Your Route", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp),),

                                            SizedBox(height: 6.64.h,),
                                          ],
                                        ),



                                        SizedBox(height: 6.64.h,),

                                      Expanded(
                                        child: Column(
                                          children: [
                                            TimelineItemWidget(),
                                            TimelineItemWidget(),
                                          ],
                                        )
                                      ),



                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Padding(
                          //   padding:  EdgeInsets.only(top: 58.h, left: 32.w),
                          //   child: JourneyContent(),
                          // ),


                          // Expanded(
                          //   child: SingleChildScrollView(
                          //     child: Column(
                          //       children:[
                          //         TimelineWidget(
                          //           dates: [
                          //             "Jan 24, 2025",
                          //             "LL",
                          //             "FF"
                          //           ],
                          //         ),
                          //
                          //       ]
                          //     ),
                          //   ),
                          // )

                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: 6,
                          //     itemBuilder: (context, index) {
                          //       return TimelineRow(date: "24 Jan 2025", content: JourneyContent());
                          //     },
                          //     // children: [
                          //     //
                          //     //   TimelineRow(date: "24 Jan 2025", content: JourneyContent()),
                          //     //   TimelineRow(date: "24 Jan 2025", content: JourneyContent()),
                          //     //   TimelineRow(date: "24 Jan 2025", content: JourneyContent()),
                          //     // ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),

                  //Bottom Action Buttons
                  BottomButtons(),
                ],
              )
          ),
        ),
      ),
    );
  }
}

