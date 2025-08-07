
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



//Timeline widget containing the greenline, Datebutton and inside info
class TimelineItemWidget extends StatefulWidget {
  @override
  State<TimelineItemWidget> createState() => _TimelineItemWidgetState();
}

class _TimelineItemWidgetState extends State<TimelineItemWidget> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: SizedBox(
        // height: 230.h, // Total height for each block
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Timeline Bar with Nodes
                  SizedBox(
                    width: 30.w,
                    child: Column(
                      children: [
                        // Green line
                        Column(
                          children: [
                            Container(
                              height: isExpanded ? 208.h : 50.h,
                              width: 2.w,
                              color: Color(0xFF0E3B2C),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Right Side Content

                ],
              ),
              Expanded(
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:  [
                    NewDateButton(tapHandler: () {
                      setState(() {
                        isExpanded = !isExpanded;
                        print("isExpanded : ${isExpanded}");
                      });
                    }, isExpanded: isExpanded,),
                     isExpanded ? InsideInfo() : SizedBox(),
                    //SizedBox()
                  ],
              ),
              )
            ],
          )
      ),
    );
  }
}



//Inside information and route
class InsideInfo extends StatefulWidget {
  const InsideInfo({super.key});

  @override
  State<InsideInfo> createState() => _InsideInfoState();
}

class _InsideInfoState extends State<InsideInfo> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 25.h,left: 32.w),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              width: 70.w,
              child:
              Row(                        //John doe and icon
                children: [
                  SvgPicture.asset('image/person2.svg',),

                  SizedBox(width: 9.w,),

                  Text("John Doe (You)", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp,),),
                ],
              ),
            ),
          ),

          SizedBox(height: 2.h,),

          SizedBox(
            width: double.infinity,
            child: Container(
              width: 70.w,
              child:
              Wrap(                        //Route Id
                children: [
                  Text("Route ID - RMEREG02 CA SK Consumer Delivery Services 20250716 1", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp,),),
                ],
              ),
            ),
          ),

          SizedBox(height: 9.h,),

          SizedBox(
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Stack(
                  children: [
                    Column(
                      children: [

                        SizedBox(height: 18.h,),
                       SizedBox(
                         height: 18.sp,
                           width: 18.sp,
                           child: SvgPicture.asset('image/control.svg')
                       ),
                        SizedBox(height: 6.5.h,),

                        //Dashed line vertical
                        Column(
                          children: List.generate(
                            3,
                                (index) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff747E7A),
                                  ),
                              width: 1.8,
                              height:   5,

                              margin: const EdgeInsets.symmetric(vertical: 2),
                            ),
                          ),
                        ),

                        SizedBox(height: 8.h,),

                        SvgPicture.asset('image/location.svg'),
                      ],
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 23.w,bottom: 7.h),
                          child: Text("Pickup from", style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400, color: Color(0xff747E7A)),),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(top: 0, left: 23.w,bottom: 16.h),
                          child: SizedBox(

                            child: Text("1030 NORTH SERVICE RD. Moose Jaw, SK, Canada S6H 4P6", style: TextStyle(fontSize: 8.sp),),
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(bottom: 7.h, left: 23.w),
                          child: Text("Delivery at", style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400, color: Color(0xff747E7A)),),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(left: 23.w, bottom: 10.h),
                          child: SizedBox(

                            child: Text("Ziing Regina 1421 Fleury St Regina, SK, Canada S4N7N56", style: TextStyle(fontSize: 8.sp),),
                          ),
                        ),


                      ],
                    )

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



//Green Date button
class NewDateButton extends StatefulWidget {
  final Function() tapHandler;
  bool isExpanded;
  NewDateButton({required this.tapHandler, required this.isExpanded});
  @override
  State<NewDateButton> createState() => _NewDateButtonState();
}

class _NewDateButtonState extends State<NewDateButton> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
         widget.tapHandler();
       },
      child: Container(
        height: 26.h,
        width: 116.w,
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),

        decoration: BoxDecoration(
            color: Color(0xff1C453B),
            borderRadius: BorderRadius.circular(30)
        ),

        child: Row(
          children: [
            SizedBox(width: 8.w,),
            Text("Jan 24, 2025", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 10.sp),),

            SizedBox(width: 8.w,),
            Icon(widget.isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down, size: 18.sp, color: Color(0xffFFFFFF),),
          ],
        ),
      ),
    );
  }
}




//New journey Container
class WhiteBox extends StatelessWidget {
  final String textContent;
  WhiteBox(
      this.textContent,
      );

  @override
  Widget build(BuildContext context) {
    return  Container(
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
              textContent,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xffCD4E00),
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 0.2.h), // spacing between text and line
            Container(
              width: 12.w, // adjust width as needed
              height: 0.8.h,
              color: Color(0xffCD4E00),
            ),
          ],
        ),
      ),
    );
  }
}
