import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popup_dialouge/Popup%20dialouge/list_widgets.dart';
import 'package:popup_dialouge/Popup%20dialouge/parts.dart';


class CleanMainContent extends StatefulWidget {
  const CleanMainContent({super.key});

  @override
  State<CleanMainContent> createState() => _CleanMainContentState();
}

class _CleanMainContentState extends State<CleanMainContent> {
  @override
  Widget build(BuildContext context) {

    return Container(
        //padding: EdgeInsets.only(top: 24, left: 24, bottom: 24, right: 15),
        height: 621.h,
        width: 312.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffFAF0E8)
        ),


        child:  Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 24, left: 16, right: 15),
                child: SizedBox(child: TitleBar(titleText: "Add parcel to your route?"))),

            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  /// First container - scrolls away
                  SliverToBoxAdapter(
                    child: Container(
                        padding: EdgeInsets.only( left: 16, bottom: 24, right: 15),
                      child: TextContent()
                    ),
                  ),

                  /// Second container - sticky header
                  SliverStickyHeader(
                    header: Container(
                      // height: 100,
                      padding: EdgeInsets.only(left: 16, right: 15),
                      color: Color(0xffFAF0E8),
                      // alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Parcel barcode", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),)
                            ),
                            SizedBox(height: 5.h,),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("123456klh90", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff148D14),))
                            ),

                            //User and Location row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 14),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('image/supervisor_account.svg'),


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
                                        child: SvgPicture.asset('image/location.svg'),

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
                            WhiteBox("New Journey"),


                          ],
                        ),
                      ),
                    ),

                    sliver:  SliverFillRemaining(
                      hasScrollBody: true,
                      child: SizedBox(
                          child: ScrollbarTheme(
                            data: ScrollbarThemeData(
                              thumbColor: MaterialStateProperty.all(Colors.grey.shade400),
                              trackColor: MaterialStateProperty.all(Colors.white),
                              trackBorderColor: MaterialStateProperty.all(Colors.transparent),
                              thickness: MaterialStateProperty.all(8.0),
                              radius: Radius.circular(10.0),


                            ),
                            child: Container(
                              padding: EdgeInsets.only(left: 0, bottom: 24,right: 4),
                              child: Scrollbar(
                                thumbVisibility: true,
                                trackVisibility: true, // Required to show the track
                                interactive: true,
                                child: SingleChildScrollView(
                                  child: Container(
                                      padding: EdgeInsets.only(left: 18, bottom: 24,right: 14),
                                      child: ScrollableTimelineBox()),
                                ),
                              ),
                            ),
                          )
                      ),
                    ),

                  ),
                ],
              ),
            ),
          ],
        )

    );
  }
}



