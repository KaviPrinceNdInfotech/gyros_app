import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class OurStory extends StatelessWidget {
  const OurStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> text1 = [
      'New',
      'New',
      'BestSeller',
      'BestSeller',
      'New',
      'New',
      'BestSeller',
      'BestSeller',
    ];
    final List<String> text2 = [
      'Gift 1',
      'Gift 2',
      "Gift 3",
      'Gift 4',
      'Gift 5',
      'Gift 6',
      "Gift 7",
      'Gift 8',
    ];

    final List<String> image1 = [
      'lib/assets/asset/gft11.jpeg',
      'lib/assets/asset/gft33.jpeg',
      'lib/assets/asset/gft44.jpeg',
      'lib/assets/asset/gft66.jpeg',
      'lib/assets/asset/gft11.jpeg',
      'lib/assets/asset/gft33.jpeg',
      'lib/assets/asset/gft44.jpeg',
      'lib/assets/asset/gft66.jpeg',
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Our Story',
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
      body: SingleChildScrollView(
        child: Container(
          //height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height * 0.03,
                width: size.width,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Buy from range of premium and healthy gift Box',
                    style: TextStyle(fontSize: 10.sp, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.4,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1467217322460-5f03dc33a28e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
                            //'https://images.unsplash.com/photo-1467217322460-5f03dc33a28e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
                            ),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Our Mission",
                      style: GoogleFonts.fondamento(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      """Belive Your Trustworthy 
                      and 
Transparent Food Partner""",
                      style: GoogleFonts.fondamento(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      """Pure minimally processes
 food, directly from farms,
     No false promises.""",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        wordSpacing: 2,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.44,
                    width: size.width * 0.50,
                    //color: Colors.yellowAccent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.h,
                          ),
                          Text(
                            'Who We Are ?',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '18+',
                                    style: GoogleFonts.roboto(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.themecolors,
                                    ),
                                  ),
                                  Text(
                                    'Food Micro-\n'
                                    'Entrepreneurs',
                                    style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5000+',
                                    style: GoogleFonts.roboto(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.themecolors,
                                    ),
                                  ),
                                  Text(
                                    'Community of\n'
                                    'Farmers',
                                    style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            """We Are a community of farmer
families (Gyros organic food cooperation,). Spread across
India .Processing unit near the 
farms.This has helped generate 
rural employment facilitate fair 
trade with the farmers, Provide 
them with resources  and 
eradicate middlemen from the supply chain.""",
                            style: GoogleFonts.poppins(
                                fontSize: 7.7.sp, wordSpacing: 1
                                // fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.44,
                    width: size.width * 0.50,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.35,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1473973266408-ed4e27abdd47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Container(
                height: size.height * 0.75,
                width: 100.w,
                color: Colors.pink.shade50,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'Our Founders',
                      style: GoogleFonts.roboto(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      """You and agile graduates from IIT Guwahati wanted to use their
technical skills in the food and agriculture industry. They have the 
vision to bring food processing to the farm level and provide
traditional superfoods to everyone.""",
                      style:
                          GoogleFonts.poppins(fontSize: 8.5.sp, wordSpacing: 1
                              // fontWeight: FontWeight.w500,
                              ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PhysicalModel(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            elevation: 7,
                            shadowColor: Colors.green,
                            child: Container(
                              height: 49.h,
                              width: size.width * 0.31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 10.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://www.kooarchitecture.com/wp-content/uploads/2016/08/GREEN-CIRCLE-PEOPLE-Bruce-Roth.png'),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    'Vineet Mishra',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      """Being from a family, I know the hardship they face. Equipping them with techology, financial aid , and foodprocessing  machines will generate more value for them. And in turn, This leads to haelth and traneable food for consume.""",
                                      style: GoogleFonts.poppins(
                                          fontSize: 8.5.sp, wordSpacing: 1
                                          // fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          PhysicalModel(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            elevation: 7,
                            shadowColor: Colors.green,
                            child: Container(
                              height: 49.h,
                              width: size.width * 0.31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 10.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQoS55K0T3BilceYwSd1PZgDky8-NKkPTK4Q&usqp=CAU'
                                              //'https://www.nicepng.com/png/detail/906-9068843_korean-teachers-diane-profile-girl.png'
                                              // 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhYYGRgZGh4eHBwcHBocHBoeHBoaHhwcHB4cIS4lHB4rHxoaJjgmKy8xNTY1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQkJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDY0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ3NDQ0NDU0NP/AABEIAOYA2wMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAwQFBgcCAQj/xABAEAACAAQDBAcHAgQFBAMAAAABAgADESEEEjEFQVFhBiJxgZGhsRMyQsHR4fBSYiNygpIHFKKy8RUzQ8IkU5P/xAAZAQADAQEBAAAAAAAAAAAAAAAAAgMBBAX/xAAsEQACAgEEAQMEAAcBAAAAAAAAAQIRAwQSITFBE1GBIjJhcQUUM5GhsdEj/9oADAMBAAIRAxEAPwDXoIIIACCCCAAggggAIIIIACCCAmAAgiNxO3cMnvTVrwXrHwWsRk/pnIHuo7dyqPM18oZQk+kSlnxx7aLLBFNmdNz8Mjxf6LCR6bTP/qT+5of0ZexN6vD7/wCC7wRSk6bvvkqexyP/AFMOpXTZD78px/KVb1pGPFL2NWqxPyWuCIXDdKMM/wAZQ/uUjzuPOJaRPVxVWVhxUgjyhXFrtFY5IS6aYpBBBCjhBBBAAQQQQAEEEEABBBBAAQQQQAEEEEABBBHjMACSaAXJNgBxMAHsNsdj5cpc0xwo3V1PYBc90VnbXS4Cq4ehO9yLD+Ub+027YrcrCzsQzOat+p2NhelyfQRVY6W6TpHHk1ST2wVv/BYNo9MzcSUp+5te5R8z3RXpuKxGJbKzPMJ+Eaf2iwiw4Do9IVPbTHzhVJ/SjEDcPeI9eEGycYtV9kFlq5GcMGGX9QBYgC28VrQRKeqjDiEb/JP0cuTnI6XsiKw3RmeXVGULUFqm4UDjS2tqV3xJN0LYBuvmIAy0FATvBqTT7xaHxjGd7NQtFBLknrUpVcijW9K14x5jMW0uRWYT7QrQBAalyLKut6/WFlnyST5r9Fo6TEl1ZTMdsuUlqPdhfUqoHWNLZjXuoIYYh8PnCS1vQ+8xA41PCgG7jEwuznxCrNSbQnq0sGVQaKGA40r4cIYYmXhJRBmvLD0oGzAuKAVsNTu7zHE82Rvt/ArxRXhf2EP+kt7N2LoHJBRQ1eplNwATUscvdWD/AKOURXnOEJrVaXNqig8j2Q8we15SSyofKwHVehylarqSLC3YKdsMjtJHzB5yZKCpLKan4Vz1ol6Ctd5h1k1C8sx4YvtDL/LtlL2oDQVN2uAKDvEALS2qCyEGgIJU1FDYjXUQ+m5MpKurS11ysDRibA8COe/siDfGSyM2dGcVABdKjSmp4k+EdMNVlX3K/gk9NF/bwWnAdLJ6Wakxf3WbuYfMGLVsvpHInUUNkc/C1if5To3ryjLJ2JLFcgWl8xrmBNt40FfnC9SAC4y6a6XBIpysfCOhTxz7VM1SzYvyjZIIzrY/SabJorVmJwJ6yj9rfI+UXrZu0Zc9c0tqjeNGU8GG6FljcTqw6iOTrh+w7ggghC4QQQQAEEEEABBBBAAQQQji8UstGd2yhRUn5DieUBjaSthi8SktS7sFVdSfQcTyjPdu7efENlWqy62Uasdxamp5adsJ7Y2rMxUwAA5a0RBc1O88WPlFu6OdHBIAmPRpp7wnIcTxPhz6Eo41cuzglOeolthwvLIrYfREsA8+o4INf6ju/lHfwhyGDzhh0YqAGuB1aAVWi6UFKU7Tvia2lInOW9m5l5RQaEPUV7RTSENg7F9lV3vMNia1rfUcI48snkkrX/DphhjDhIey9kyxStSFFACbC9d3OFWwUr3SqmprQ0Jryr2Qxxm11k5VJzE6tcgV0rQEnsEJpbEL7VqsVGUAdX4iSa3FwaQtxTpIraJmgzVy3I1oN26vfEHiZfsprTCheo6ii7FjWqpmNiaVJsAoJNBDjEbTIZpUslpguTlqq/tJG+K/OnTMQmJxCuVRf4UskCjIhBmTF3dZ/JBwh6Uvg3spe1NoTiHqVw6Ozgy5TFnIDb2U3oDQCqqeBiv4bGtIfPKVUali6h3BqDmBoArWoCBoYV2njblZa1IPvXJNzx7TETR2PWJrpTjFIpJcKjNqJg7Vmvm9pPnFm97+I4BFDUEVplNdCNIjcDLSazIXyS1HWYUqxDdQDNYXr/bpC52U7C7KP2i57/pHKYRU96p5UAXyJPjAbQYuYgRpIdnlls9wKgmgcmgBN1S2lo7lY/IyTEJOSihbJ1QD1cyU4ndv1hF0lm+Sg4gmnfQnzENXwqi6tQcG08R9I22LtLPi+lSOip/lpVc2YgoHQNU9dAzWJqa0A74Zphpqy/apneXShDgso4gPUlSKG1d2m6K1MlupqRbiLjxh7s3aLy2zIxU0ItvDCjAg2YEbjGupdhtJvCbRJqFAog6yfEBW7KfjUcQLClQIndnbQZGDynow4ejDeIq+F2Y7o8+WwDSaMQD11WlBMXflBseAPCJfGYsoK+8JjZwQFGVj1SthTL1dBTQcIZTcOHyjmzadP6ocM1bYO3kxAymizALrx/cvEctR5xMxjeBxRIWYpKsCDUVqrdsaT0c26MQuVqCao6w3MP1L8xujZwVbo9Bg1Db2T4f+ybgggiJ2BBBBAAQQQQAeOwAJJoBck6ADeYzjpFtk4l8q19mpoo3sdMxHE7h9TEz012vQf5dDcirkcNy9+p5U4xz0L2LX/wCRMGn/AGwfNvkO88IvCKjHdL4ODNN5Z+lH5JPovsASR7RxWaw/sB+Ec+J7u2yCCPYjJuTtnZCChGkeRGbb2ishAzKWDHKQDTUX8qxKQ3xOGR1ysAQaWPLSEkm1SGd1wVnZeBdZjz5eb2LKplpRCSCFax3DtvrvvHOOkPVWmFUctVHDEHMLhSNNAwp+GanBy3sUGRAgyuBZb5covrTSInF7Cm2VckxUByNMdzMzP77NahpqB+0RBw9hGvYRwUx0lF1IHWLMCeszAVA4la033qeMUjEzRLQSg7Mor1atlFSWspJGt66xaOkEmdJS3WzvkFFIawJBW+lvPWKTjpLb61POKR4RWMeCLxk+tgfIGE8BgMzZ2IoK0HzI8IkMNs4samJJdmin/MO5oZQZDYg/qVfzgYYNMOqsbbjeLJM2YCIr+OwTIxFPuPrApJmOLQ0E5SbHK3KwPaISIvT3W4bj2QlPSt94jlXqMrajQw4oqswr2eXhHWUNcAA8NAewiBDXqn3qafqH1j1Uy8cp8voYLMFMPtcyyaB0JoD1qgrW6m11IFKG0WDbeMR3eZLIKTMxQAUFGJO/3dYg/YrMGRrNTqv9Y5wD0l+yK9dMx7Osa/KMk7RjiS6bRFJaAZQCSxtVmNQMzb1Fa0ia2fj6MHlv1kbVTUVHqp8wYqGpAPCHWFxORxlBpoRx7OYhsWTa6fRyZ8O9Wu10btsPaq4iWGFmFmX9LfQ6j7RIxlmwNrexmLMU1RgAwHxKd45jUfeNRlzAwDKaggEEaEG4MNkhT46K6bL6kafa7OoIIImdAQ22jjFky3mNoorTidAO80EOYpnTrH3WQDp1m7TUKPCp7xDQjulRLPk9ODZB7LwrYrEUYk5iWduAr1uzcB2iNRlS1UBQAAAAANwFgIrfQfZ+SSZpF5htyVbL4mp7xFnh8srdLpEtLj2x3Pt8nUEeVj2JHUEeUj2CADkjnBSOo8IgAgtuS1d0DHqorMeeagA8vOKntPCK5qoueHD8tHW2dos+IdFr1mH9q0C+JrEpgsA2XMwiDbbsvFJIhMPs8KLiOHl0ixYmUAIicQkYx0RrpEPtWX1c1NNezfFgmS7RG42VVSI1MxopWMk5WI7fDWGjSq18fnEvj00bl6Qzw6VFePyH2iqZFx5GLioB+Iad2ohzhnDrlOvr94SnoVNt1x3Q3zZTmGh8uIjRaHSGhynuPH7/AEgeZ/FRzvs3ofIwqzBxwb159toUk4bOjhhcCoYV14G1jAB09sygEFTa/Am8cVGlRehrSlDW9/nDmaPi4gG430oYYs1ToSToPtConXJP7GndXJQgfDUg6a/XxjTOg+0sytIY3TrL/KTcdxP+rlGSyJT9VlqpFzXqi3G1x3RbNk44ypqTRopvzU2YeBMdUPrg0+0cOT/xyqa6fZrEEeKwIBFwbg8RHsQPRAmMsxEw4jEE1p7RwAT8KkgDwWnhGg9IsTkw81t+XKO1ur84yfGEZaHf8rxfFwnI4NV9U4w+Ta5CKqqF90AAU0oBQeUK1jDdn7YnyP8AszXQfpqrL/awp5RZsB/iDPUfxUSZ/LmlsO2zA+AiNHYmaZWPYrOzummFm2LmWx3OKD+4VHiRFgkzlYVVlYcVII8QYwaxUmOS8eTZgUVOkcCeNwJ5gWjAbFoY7WxXs5TubUHrb5w22vt2VhxWa+UEVUfE3YNYp3SHpA0yUGbqI7dRdWIUVJbtINt0LJmx5Y32JL6xdveY189b+UXYiiDnFO6HoZpLn3EPWPFjrEztrbEwGkuSxVRqbE9giZdCmIaIybrEO/SxASrq6kagjQ86w7lbSlzBVGrA0OmjubDLEpaHrXjl0BjAKPtJSpYHt8YYbPew5H1iybdwfxAX0PZ+esVaUMjEd4/PzWHi+CclySGIwoO6IaZJZCQwqp38Dx/OMWXCTVe2/hDrEbOBQki8MnQjRUJcvhfs1+0Sq4solXJIG4m/YB84bzMKoJFPnDLadUAyk5WsRury4VEMnYrJbA4Mz1UqcpANak015Cu8xK4DZ4ll2zAlkKmgplFi16mpNKeMN+ieIVUKlhVxRVpq1DlNd1D6womHerL7qi7sRu5DU34RiFrk7UAitNxI0BoN/wCcIc4ZrUjnCYBqVNzfXU93YfKF0knMTXqjQdoGnGmndFsUqkiGphuxv8cmldEsXnwyV1SqH+n3f9JWJqKT0BxNHmS+Khx/SaH/AHDwi7RmSNSYafJuxJ/BWunU2khF/U48FUn1pGZ7Re6ihNt3M/aL/wBP3vJXk5/2AfOM32k5zm+4W36bvGKdYv2Qrdqn+EcsBvH2gVhS1fP13Qkj7638/CO5Mznpvp6xI6z0NxLesdy5zIQyOUI0ZSVPiseNe3GOfZ/g1gAt2yf8Qp0oquIAmJ+oCjjvrlbvA7YsW1enUkSwcP13YWDAqE5tXXsHjGXCVWPUl0NrEcIKNUh5Plz8RPDOS7sQKsQd+tBooFbCJTbSAzUlL/4VW2twQW3ip6hHOphz0ZUis56VHu86D88+EQeAxZfHH4s/VHaCtD+cTEZO5F4r6bNU2BhlkYVABQsSadv2EQW2trS0JzOq9pix7QllVRQaZVpXnS8UbHbBSXPE4p7calXNq/tGle3yhHyx48Rsi8ftPCz6KzIx3GoDDsPyjjAYBUbMj24GIXbuCLzy6y8iVJ0Km5rRhUi3u23AQ9wCEdVcwWlq0tDSVLhmxbb5Rb8hC1hp/mKVrEhhmph6ubgamKXi8c2eg3mJoZne1jOmGi2XtpEMdjtqWoR+eEWCVimchEKiu8kepsPOITpDMmSZ2T2mYU1C5bHeKkg/aKRTZOTS7GsuTcXIIi04B3KZHqeBpf7xVPbMCM1/3Aeoix7Nx1lDcbHiOEa7MSRHdIMIy9dR2/TtiDWcGUhxbjvB3RfdvSA0o7wfl9q+EZ7i0t307TDREkT2xZQ6oU3DBlNKnqnN8oncVtD2rhcoJG9Rcm1Sb20OtN8VjZaUyEk+/uNDTKwi2I6iyqMvfu8I0VjNMQwZuqXAsFDZiaWzEC9Ae4R5jp4QqzDUCgrShoPHee6HxmlakKRXgAPkbRG45lGQuaKGVmpaijXRam3ZGqxXTVFn6JTcuKT92ZT3qSPMCNJjJ9iTx7aQw0Loe5mHyMaxFs65Ry6F/TKPsyj9Pj/El/yH/d9oz7HULkEVuAORoI0Pp+nXlHirjwK/WM22kCJjEVrbluEE/wCkjMXGpl+hpPl0v58O2FBNdBUGqncfysdGbWuY68o4KLpz1B0ty7Y50ztaPUxIOq074cB99BTlcwmcPlAqA1PEaHjfthATqHS3Z6w6diuI8D10hSTJLNSmnHdDaS6HSld9YlcG7M1WZmY0qzEtYWAua8IH0YlySmJm+yw7U3LlXmTv8x4mKXsjF5MWlDrMRR/+iiLP0iegSXwqzdt/v4CKXhLTkc6LMQjudTXyiMebOl8JI+hdoEtW9IreNmEVBr2xYpxF6xB7RAvE2WSRX8TLDQ4wGyBXNCExwCYmtnYgZRbXSMQUNdudSTQRQ8TLqaxe+kM0FMlLiKbOAU9bfpDxMkhxgCWFDSHb7PQ6qe4wywNK2MT0rTSBsVK0RSYMKbJ6VhzKwi7xrqKfgh7MIjxDAmwcRttWRll2Zsv6a1pY6E3jOsVMq4AuAYvXSLE5JXaaeUZ1Ics5O/Ud0UiiMiy4RKgcjXyhaeUBqWdSxuFbwNOEJYF7WvbTut+coQR6kkm58uV+GkauhJIl0ZiLM9NxDqp8xWHMpBvd+3PT1hlKnUWgpUAWNeHhTdDtGVySc5YnrAE6nkLU3bodCD/B9V0pU0ZacTQimka/GR7MSsyUoGroKf1KI1yK5+kcekX3fsqXT6X1JT8HZf7lr/6RmG2FIcNuoK9xP1EbB0vkZ8M/FCr+BofImMr2lLBCk7ju5/8AEaluxV7BJ7dSn7or0+ZW47qRyjlfzfEg0td4qDyFfFQITOEQ1ozKDyB+kQo7dx4mNO8DlffzhOa+bRacD994jr/JW6rDvqPrHD4ZwKCja6GtNNBBVG7hIhiRSmtfX8rFi6OTs7ipBy3LbjTQekVszCLU7dx10PLfFm2aMkl30LkAcbn5Cp74WTpDwVsYbTxBmPMatiaA8q/RfOIXEAArS1NB2XJiRxrUQAas1T2a/IRGT3ux/StO86/OFiUb5NznYjMiuNGUHxAPziubVx4UVJhToZjvb4CST7yKZbdqWB71ynvhntvAjOjHSt4jLh0Xi+BLAYYzDmew3L9YsmFKoB1akb4rQ2k+HcLNTNLdgFdbFc1hmG+++0T+LUqcrAqeB/LwU0Aw2zlZieIiuTgjDKaW0iaxa31EReIlCGTaCRGSUIYkaboncFMqIiJsulywA8I7wmKvVGDEa0NYH7iRZOOscI9o9nE0qRS0N0esCNkytdPMTQSkr72YnuoB6+UVPB++O2JLpdivaYhgDUSwEHaKlvM07ojcNrF48ROaTtlgwhoabtIS9oVcg1saXpHsh6kjs9IMatWDcQK8DT52hY9hJcCsvFAa6ns9IUowsjXY7rHhWtTe3lDKQxrp9of4CWWmLwBr4XikVbojOVRb9i7dGpWbEyhwav8AaC3yjT4oPQaRmns25UPixAHlmi/RXM/qIaFVBv3YniZIdGQ6MpU94pGO4+SwV0p11qKVp1lOluYpGzRnnTHBZMRmA6swZv6hZh6H+qDC+4vyLrItJTXhmdy8Up3MOO/yhaqm4avYYZbUw+SYw3e8Ow7vGvhCeHe9OWkTdp0zpi1KKkvI+6w328CPkfEQr7VfiJ7bev3hqk0gaW7/AJXhZJgI1Ipu1J50uB3wG0OUkh/eA411PK2sONrTAiIgr1VLVPGwHrDTDKlaaEkUrc338vtHG3Hq7DcKKO4xKfgrj8jbaR6ydp/2xHYn3GPE+lYfYq7ryJr4RH4xuoe35D6wRGkWj/C/amSa+HY9WbQrydR81t/SI0LamGzqYxPZDlXBBoygsCNQRcRr/Rrba4qVUkCYlFdeDU94cjr4jdE8kebK4pcUOJuCDywrAHq0I9Y9O1aKUnLmUhRnFzQWqefZEiFyxGY6QprQ09PCFTKqnwzyYcHMckMgAB6obLe1LGh4xAYs4ZWYZ69cCzVoLVFt3OPcTgTcVBiOfAgcO6GtCuKXkidoSBiHIClEBNt7XseQtXviwbBwSjdRE8zuhoksCwiUkvlTKN+sZJ+BV2dY6dmNohttbREiWWsWNlHFvoNYc4/GLLUuxoBGd7W2i0585sNEXgPrpDQjYk5UMtSSbkmpPbqfGHMoXhGWIdyUuBFmQRISW6/cB9IfThUUrvvEeD1xzp62hyTuOmu7d22hBvAp7IFGaqhlKgLcs1d4Gg7+B5RJbFl6tSwFBpvub67h4xA4iccwKOxA8fvFu2VhGCIgFXalv3NoPQd0dGGNu/Y4dXOobfLND6DYXLJZzq7W/lWw/wBWaLNCGBwoly0ljRVA7aanvNT3wvCSe6TZ0YoenBIIh+lGz/bSDlFWTrLzpqveK94ETEEZF07Rs4KcXF+TCtuYXOmdRVkv2qdfrC+wOhuInL7UgS5dK55gNMv7V1e2mgPGLR0r2V7GaWUdR6leAPxL8xyPKJWRto4iUqN7y0z/ALyPdPZvPOLZI7qkjk003BvFLtdDfZnR3DIMzJnpvalTzyLZRyueJhTFLhU0w0g8/ZpXtpSPZ7nTdz/CIjcS1qeX5Y90T4OzkdvtKUEIREXqmmVQKW5UEZftNutU7yD4sPpFnxUwLmAOoNvrvEU/HzKkncAPIxGTtlYqoi0x/wCIAd5I7xpDDFN1e8/L6Q6xZq6HmK99PrDDG6DmT6xqNbPdm+8x/aYuP+Gw/jTf3IvqfrFMwhy1PEUi7dAFyzK/qQDwELPo3H2aSj1GU6wyxK0Bh8yVERuMlNTjELOghsSDEc9axKTbbjEXiJh3CNTMbOGIGsNsTtBUW/hCM8tqTEBtObaHSsm3RHbYx7znv7i6Dd28zEbSprDiao08Y6lSa3On5pFlwiLts4lp4RIYCVVqkaXhAr4DT6wvhJlHXgYxsKF5y0maUBuBDhpRLUNwSQKa6V+Ygxkg5kI31H09YVwjn2iMi5qXFdK0Av2GMd+BXwO8LIzvR1oZZq1da6qteFN0aB0K2dnmmaw6svTmxFvAX7xFawmGZmCqAXciuUUzMQB3C3lGrbJwCyJSy1vQdY/qY6nx8qR1V6cK8s8/GvWzbvCHkEEEQPQCCCCABntXZ6z5bS236HeGGjD80rGasr4eaVYUZTQjcw+YIvGrRCdI9iDELVaCYo6p4j9J5cDuPfFcc6+l9HJqcLl9UO0V4YlHAKHUab+8b+6GOLelRSvZpzJG4c4YSZjSnKstwaMpsQfkRCe3ccEkMwarvYH4hyB39nbC5IOL/A+nzLIqfa7RXcbjszzDWoVSORJuacrRXg1VPHKD5gwuH6jc6j/SfrDdBVsvKnkYijr8Dma10PEA/T0ENZzVtw+v/EOZ46qHhUd1aiGYerE90agYoo6pMXHoi1CG7PnFPlCtRx+sXXoxLoL8BCT6Hh2aNJeqwhMmQ22bPqtDHM6ZeOc6EI4mXEZOw41iW1vEJtjGBQQI1A0QW1sSqAxWZrljmO/3R84mMWAQXcV4DjESzGtaVZvBR8hpFY8IhIaHD7z3D5x29Ftv8hHcyZeg8eJ5QwxEytQO+Krkm3R5PnVsIUlvTKRuhmhrDqWu6GaEssMzrS1avuOppTdpr3xMbNwWQEnU18MxP08Ib7GwRCKXG4EKeWhMXrorsH2pE2YP4YPVB+Mj/wBR56cYvjgoLdI4c+Z5Zelj+WSnQ3Y2Vf8AMOOsw6oPwqfi7T6dsWqCCJSk5O2dWLGscVFBBBBClAggggAIIIIAILpFsBcQM6UWaBY7nH6W+R3Rm21NnVrLmKVZT3qfmPWNmiN2xsaXiFowow91h7w5HiOXpFoZKW2XKOTNp23vhw/9nz7tTCNKUK2hJOYaG/rTdDCWesexvIUjT9s7EeTVJqBkNg1Kq30PIxU53R8KxeWbH4Tuveh+vjGSxcXHlBi1avbk4ZCzKhAOHrSGkrUnxiTxcujZSCCSaAi45xGz5ZS0c53XfI42amZ+WsXfZ3VIA/T6f8xUdiy7ZuMWeQ/unu8vtCSKwLNgptDHuJm1MMMO8dM9WiVF0P8AET8qViqYxyz8STb84RJ7QxR0H5bf4xHFKAkm5tGoxuyJx5B+XCg+piJxD06o1PkN8O8fiMzncq/KIp2JOY7/AEi0Uc8nycTnoLdghqRaFXv3RJYDYMyZQsMicWFz2L8zSKxi3wjnnOMVcnRE4eUWIVQSx0AFSe6LhsbYYSjzLvuXUL28T5CJPZGyFQhJSFma1aZmb6DyjQdhdEwtHn0ZtQmqr/N+o8tO2LqMYcy7OGWWed7capeWRfRzo2ZtJk0ES9Quhf6Lz37uMXxFAAAAAAoALAAaAR1BEZTcnydWHDHFGl/cIIIIUsEEEEABBBBAAQQQQAEEEEAHEyWrAqwDKbEEVB7QYq21OhytVpDZD+lqle46r590WyCGjKUeieTFCapoyTaWynlmk2WRexIqv9LC3nFcx/R8OcyOVPBhmH1HnG+uoIIIBB1BuD3RCYzothnuFKHihoP7TVfART1Iy+5HL/L5cf8ASl8MxzA7MeXY0PMGJFAQL2oR6xd8T0Kcf9uYrcmBU+IrEZP6M4lf/Hm5qynyrXyhXhxy6dDx1WeHEoX+iPlsKQqgBjl9mz11lTB/Q9PGkJFHHwuO4wn8q/EkWX8TS+6LR1iJIzcso9TDDGmi0HM8a2NokEws1tEmHsRz6CHMrYOJbSS/9VF/3ERq0yXcjH/Em/tg2Z//ANOnOLIesblurbvh3K6OE++4A4KKnxOngY0bD9Dp7e+yIO0sfACnnExhOhklbuzOeA6q+V/OKKOKPbsg8mpydKjOdn7HRCAiFn3GhZz2fYRb9mdEZsyjTT7NeGrHu0Xv8Iu2EwUuWKS0VRyFz2nU98OIHlpVFUENJb3ZHbGWztlypC0lqBXUm5btPy0h7BBEm2+WdkYqKpKggggjDQggggAIIIIACCCCAAggggAIIIIACCCCAAggggAIIIIACCsEEABWCCCAAggggAIIIIACCCCAAggggAIIIIACCCCAD//Z'
                                              // 'data:image/jpeg;base64,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'
                                              //'data:image/jpeg;base64,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'
                                              ),
                                          fit: BoxFit.fitWidth),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    'Priyanka Mishra',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      """Being from a family, I know the hardship they face. Equipping them with techology, financial aid , and foodprocessing  machines will generate more value for them. And in turn, This leads to haelth and traneable food for consume.""",
                                      style: GoogleFonts.poppins(
                                          fontSize: 8.5.sp, wordSpacing: 1
                                          // fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          PhysicalModel(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            elevation: 7,
                            shadowColor: Colors.green,
                            child: Container(
                              height: 49.h,
                              width: size.width * 0.31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 10.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://www.pngitem.com/pimgs/m/404-4042710_circle-profile-picture-png-transparent-png.png'),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    'VP Mishra',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      """Being from a family, I know the hardship they face. Equipping them with techology, financial aid , and foodprocessing  machines will generate more value for them. And in turn, This leads to haelth and traneable food for consume.""",
                                      style: GoogleFonts.poppins(
                                          fontSize: 8.5.sp, wordSpacing: 1
                                          // fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.67,
                    width: size.width * 0.50,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.65,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1542897841-cf7d4e677d1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.8,
                    width: size.width * 0.50,
                    color: Colors.pink.shade50,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.h,
                          ),
                          Text(
                            'What Do We Offer ?',
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Purest form of authentic food.',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            """We assure to provide you with whoolesome,chemical-free and preservative-free food straight from the farms""",
                            style: GoogleFonts.poppins(
                                fontSize: 8.sp, wordSpacing: 1
                                // fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Minimally processed using\n'
                            'traditional methods.',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            """We assure to provide you with whoolesome,chemical-free and preservative-free food straight from the farms""",
                            style: GoogleFonts.poppins(
                                fontSize: 8.sp, wordSpacing: 1
                                // fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Prepared locally by farmer families.',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            """We assure to provide you with whoolesome,chemical-free and preservative-free food straight from the farms""",
                            style: GoogleFonts.poppins(
                                fontSize: 8.sp, wordSpacing: 1
                                // fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'With farms-to-fork transparency',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            """We assure to provide you with whoolesome,chemical-free and preservative-free food straight from the farms""",
                            style: GoogleFonts.poppins(
                                fontSize: 8.sp, wordSpacing: 1
                                // fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'How Do We Do It?',
                style: GoogleFonts.roboto(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 3.5.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: AppColors.themecolors,
                ),
                child: Center(
                  child: Text(
                    'INDUSTRY SUPPLY CHAIN',
                    style: GoogleFonts.radioCanada(
                      color: Colors.white,
                      fontSize: 9.sp,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 40.h,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ars.els-cdn.com/content/image/1-s2.0-S2590332219301289-gr1.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
