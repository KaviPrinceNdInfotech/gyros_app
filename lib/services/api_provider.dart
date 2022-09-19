import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gyros_app/models/blog_model.dart';
import 'package:gyros_app/models/catagary_list_model.dart';
import 'package:gyros_app/models/first_purchase_banner_home_model.dart';
import 'package:gyros_app/models/flash_product_descriptions_model.dart';
import 'package:gyros_app/models/flash_sall_list_product_model.dart';
import 'package:gyros_app/models/gift_box_model.dart';
import 'package:gyros_app/models/slider_banner_models.dart';
import 'package:gyros_app/models/sub_cat_by_id_model.dart';
import 'package:http/http.dart' as http;

import '../models/best_seller_models.dart';
import '../models/our_offer_permotion_model.dart';
import '../models/our_story_model.dart';

class ApiProvider {
  static var baseUrl = 'https://api.gyros.farm/';

  static String token = '';
  static String Token = '';
  static String categoryid = '';
  static String catid = '';
  static String productid = '';
  static String orderid = '';

  //catagary list api gyros 1 api.....................

  static AllcatagaryApi() async {
    var url = baseUrl + 'api/AdminApi/ProductList';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        CatagaryListModels catagarylist = catagaryListModelsFromJson(r.body);
        return catagarylist;
      }
    } catch (error) {
      return;
    }
  }

  //slider banner Api gyros 2.........

  static SliderBannerApi() async {
    var url = baseUrl + 'api/AdminApi/BannerImage';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        SliderListModel sliderbanerlist = sliderListModelFromJson(r.body);
        return sliderbanerlist;
      }
    } catch (error) {
      return;
    }
  }

  //our offer banner Api gyros 3...................................................

  static ourOfferApi() async {
    var url = baseUrl + 'api/AdminApi/PromotionImage';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        OurOfferPromotionList ourofferlist =
            ourOfferPromotionListFromJson(r.body);
        return ourofferlist;
      }
    } catch (error) {
      return;
    }
  }

  //sub_cat_by_id  gyros api 4.....................................

  static getsubcatIdApi(var catid) async {
    // var prefs = GetStorage();
    // categoryid = prefs.read('id');
    //   print("userid  $categoryid");
    var url = baseUrl + 'api/AdminApi/SubcategoryList/$catid';
    //var headers = {'Authorization': 'Bearer $token'};
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        SubcatbyId getsubcatbyid = subcatbyIdFromJson(r.body);
        return getsubcatbyid;
      }
    } catch (error) {
      return;
    }
  }

  //login with email api gyros api 5..................................

  static LoginEmailApi(
    var Email,
    var PassWord,
  ) async {
    var url = baseUrl + 'api/AdminApi/LoginWithEmail';

    var body = {
      "Email": Email,
      "PassWord": PassWord,
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url), body: body,
      //headers: headers
    );
    print(r.body);
    if (r.statusCode == 200) {
      var prefs = GetStorage();
      prefs.write("token", json.decode(r.body)['Token']);
      token = prefs.read("token");
      print(token);
      return r;
    } else {
      Get.snackbar('Error', 'Login Failed');
      return r;
    }
  }

  //sign up  Api gyros  gyros Api 6........................................................
  static signUpApi(
    var Name,
    var Mobile_No,
    var Email_Id,
    var PassWord,
    var ConfirmPassWord,
  ) async {
    try {
      var url = baseUrl + 'api/AdminApi/Registration';

      var body = {
        "Name": Name,
        "Mobile_No": Mobile_No,
        "Email_Id": Email_Id,
        "PassWord": PassWord,
        "ConfirmPassWord": ConfirmPassWord,
      };
      print(body);
      http.Response r = await http.post(
        Uri.parse(url),
        body: body,
      );
      print(r.body);
      if (r.statusCode == 200) {
        return r;
      } else {
        Get.snackbar('Error', 'SignUp Fail');
        return r;
      }
    } catch (e) {
      print('Error');
      print(e.toString());
    }
  }

  //First Purchase banner gyros  api gyros 7 api.....................

  static FirstPurchaseApi() async {
    var url = baseUrl + 'api/AdminApi/Specialoffer';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        FirstOrderBanner firstofferlist = firstOrderBannerFromJson(r.body);
        return firstofferlist;
      }
    } catch (error) {
      return;
    }
  }

  // flash sell product list gyros.. 8 Api ..............FlashSellListProduct

  static FlashsellproduuctApi() async {
    var url = baseUrl + 'api/AdminApi/FlashSale';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        FlashSellListProduct flashsaleproductlist =
            flashSellListProductFromJson(r.body);
        return flashsaleproductlist;
      }
    } catch (error) {
      return;
    }
  }

  //sub flash sale product_by_id  gyros api 9.....................................

  static getproductdetails(var productid) async {
    // var prefs = GetStorage();
    // categoryid = prefs.read('id');
    //   print("userid  $categoryid");
    var url = baseUrl + 'api/AdminApi/FlaseSaleSubList/$productid';
    //var headers = {'Authorization': 'Bearer $token'};
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        FlashSaleProductDetailsModel productdetailsbyid =
            flashSaleProductDetailsModelFromJson(r.body);
        return productdetailsbyid;
      }
    } catch (error) {
      return;
    }
  }
  //blog post Api gyros.......10........

  static BlogPostApi() async {
    var url = baseUrl + 'api/AdminApi/Blog';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        BlogModel blocgmodellist = blogModelFromJson(r.body);
        return blocgmodellist;
      }
    } catch (error) {
      return;
    }
  }

  // get Gift Api gyros.......11........

  static GiftBoxApi() async {
    var url = baseUrl + 'api/AdminApi/Gift';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        GiftcardModel giftcardmodel = giftcardModelFromJson(r.body);
        return giftcardmodel;
      }
    } catch (error) {
      return;
    }
  }

  // Best seller Api gyros.......12........

  static BestSellerApi() async {
    var url = baseUrl + 'api/AdminApi/BestSale';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        BestSellerModel bestSellerModel = bestSellerModelFromJson(r.body);
        return bestSellerModel;
      }
    } catch (error) {
      return;
    }
  }

  // Our Story  get Api gyros.......13........

  static OurStoryApi() async {
    var url = baseUrl + 'api/AdminApi/OurStories';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        OurStoryModel ourStoryModelModel = ourStoryModelFromJson(r.body);
        return ourStoryModelModel;
      }
    } catch (error) {
      return;
    }
  }

  ///till gyros...........................

  // static signUpApi(
  //   var Name,
  //   var Mobile_No,
  //   var Email_Id,
  //   var PassWord,
  //   var ConfirmPassWord,
  // ) async {
  //   try {
  //     var url = baseUrl + 'api/AdminApi/Registration';
  //
  //     var body = {
  //       "Name": Name,
  //       "Mobile_No": Mobile_No,
  //       "Email_Id": Email_Id,
  //       "PassWord": PassWord,
  //       "ConfirmPassWord": ConfirmPassWord,
  //     };
  //     print(body);
  //     http.Response r = await http.post(
  //       Uri.parse(url),
  //       body: body,
  //     );
  //     print(r.body);
  //     if (r.statusCode == 200) {
  //       return r;
  //     } else {
  //       Get.snackbar('Error', 'SignUp Fail');
  //       return r;
  //     }
  //   } catch (e) {
  //     print('Error');
  //     print(e.toString());
  //   }
  // }

  //OTP Varification New 2....................................

  static verifyotpApi(
      var emailOtp, var smsOtp, var email, var phone_number) async {
    var url = baseUrl + 'user/signup-verification';

    var body = {
      "emailOtp": emailOtp,
      "smsOtp": smsOtp,
      "email": email,
      "phone_number": phone_number,
    };

    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      var prefs = GetStorage();
      prefs.write("token", json.decode(r.body)['data']['token']);
      token = prefs.read("token");
      return r;
    } else {
      Get.snackbar('Error', 'OTP');
      return r;
    }
  }

  //login with mobile api new 3..................

  static userloginApi(var userIdentifier) async {
    var url = baseUrl + 'user/login';

    var body = {
      "userIdentifier": userIdentifier,
    };
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      return r;
    } else {
      Get.snackbar('Error', 'Details');
      return r;
    }
  }

  //from login mobile otp. new 4.................

  static verifyphoneotp(var userIdentifier, var otp) async {
    var url = baseUrl + 'user/login-otp-verification';

    var body = {
      "userIdentifier": "$userIdentifier",
      "otp": "$otp",
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      var prefs = GetStorage();
      prefs.write("token", json.decode(r.body)['data']['loginToken']);
      token = prefs.read("token");
      print(token);
      return r;
    } else {
      Get.snackbar('Error', 'OTP');
      return r;
    }
  }

  //aadhar detail updated...............new 5............

  static userAadharApi(
    var aadhaarCardNumber,
  ) async {
    var prefs = GetStorage();
    token = prefs.read("token");
    print(token);
    var headers = {
      'Authorization': 'Bearer $token',
    };
    print(headers);
    var url = baseUrl + 'user/aadhaar-number';

    var body = {
      "aadhaarCardNumber": aadhaarCardNumber,
    };
    print(body);
    http.Response r =
        await http.put(Uri.parse(url), body: body, headers: headers);
    print(r.body);
    if (r.statusCode == 200) {
      return r;
    } else {
      Get.snackbar('Error', 'Details');
      return r;
    }
  }

  //personal details page.........new 7.........

  static PersonalDetailApi(var profession, var date_of_birth, var pin_code,
      var name, var gender, var state, var city) async {
    var prefs = GetStorage();
    token = prefs.read("token");
    print(token);
    var headers = {
      'Authorization': 'Bearer $token',
    };
    print(headers);
    var url = baseUrl + 'user/personal-details';

    var body = {
      "profession": profession,
      "date_of_birth": date_of_birth,
      "pin_code": pin_code,
      "name": name,
      "gender": gender,
      "state": state,
      "city": city,
    };
    print(body);
    http.Response r =
        await http.put(Uri.parse(url), body: body, headers: headers);
    print(r.body);
    if (r.statusCode == 200) {
      return r;
    } else {
      Get.snackbar('Error', 'Details');
      return r;
    }
  }

  //add bank detail...............new 8...............

  ///get all catagary API........new 9...........guros..........................................

  // static getallategaryApi() async {
  //   var url = 'https://api.gyros.farm/api/AdminApi/ProductList';
  //
  //   var prefs = GetStorage();
  //   var r;
  //   prefs.write("id", jsonDecode(r.body)["cat"]['_id']);
  //   categoryid = prefs.read('id');
  //   print("userId : $categoryid");
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url));
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       List<CatagaryListModels> getallcat = catagaryListModelsFromJson(r.body);
  //       //List<CatagaryListModel> getallcategary = catagaryListFromJson(r.body);
  //       return getallcat;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get catagary name Api new 10.. gyros...............................

  // static getcatnameIdApi(var catid) async {
  //   var prefs = GetStorage();
  //   categoryid = prefs.read('id');
  //   print("userid  $categoryid");
  //   var url = baseUrl + 'SubcategoryList/$catid';
  //   var headers = {'Authorization': 'Bearer $token'};
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       List<CatagaryListModels> getcatname =
  //           catagaryListModelsFromJson(r.body);
  //       // List<CatagaryListModel> getcatname = catagaryListModelFromJson(r.body);
  //       return getcatname;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get Priority catagary api 10........................................

  // static getprioritycatageryApi() async {
  //   var url = baseUrl + 'category/priority';
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url));
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetPriorityCategary getprioritycategary =
  //       getPriorityCategaryFromJson(r.body);
  //       return getprioritycategary;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get tradding offer (banner) api new 11.....................

  // static getbanerApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'offer/trending';
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url));
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetBannerModel getbanner = getBannerModelFromJson(r.body);
  //       return getbanner;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get wallet api  new 12......................................
  // static getwalletApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'wallet';
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetWalletModel getbanner = getWalletModelFromJson(r.body);
  //       return getbanner;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get lead api new 13............................

  // static getleadApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'lead';
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetleadModel getlead = getleadModelFromJson(r.body);
  //       return getlead;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get credit link Api...........14 new............

  // static getcreditlinkApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'credit-line/withdrawals';
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetcreditlinkModel getcreditlink = getcreditlinkModelFromJson(r.body);
  //       return getcreditlink;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get personal detail Api new 15 new...............

  // static getpersonaldetailApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'user/personal-details';
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetpersonaldetailModel getpersonaldetail =
  //       getpersonaldetailModelFromJson(r.body);
  //       return getpersonaldetail;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  //put profile image new 16.......................

  static putprofileimageApi(var imagePath) async {
    var prefs = GetStorage();
    token = prefs.read("token");
    print(token);
    var url = baseUrl + 'user/profile-image';
    var headers = {'Authorization': 'Bearer $token'};
    var request = http.MultipartRequest('PUT', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('image', imagePath));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    http.Response r = await http.Response.fromStream(response);
    print(r.reasonPhrase);
    return r;
  }

  ///get catagary name Api new 17..................

  // static getcatnameApi(var catid) async {
  //   // var prefs = GetStorage();
  //   // categoryid = prefs.read('id');
  //   //   print("userid  $categoryid");
  //   var url = baseUrl + 'offer/category/$catid';
  //   var headers = {'Authorization': 'Bearer $token'};
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       Getcategarynamemodel getcatname = getcategarynamemodelFromJson(r.body);
  //       return getcatname;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get offer by id new 18....................................

  // static getofferIdApi(var offerid) async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //
  //   // var prefs = GetStorage();
  //   // categoryid = prefs.read('id');
  //   //   print("userid  $categoryid");
  //   var url = baseUrl + 'offer/$offerid';
  //
  //   var headers = {'Authorization': 'Bearer $token'};
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetalloffersIdmodel getofferid = getalloffersIdmodelFromJson(r.body);
  //       return getofferid;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get user Api for  this is not a list drawer box new 19...............

  // static getuserApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'user';
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetDrawerModel getDrawerModel = getDrawerModelFromJson(r.body);
  //       return getDrawerModel;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///get bank detail API new 20.........

  // static getbankdetailApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'user/bank-details';
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       GetBankDetailModel getbankdetail = getBankDetailModelFromJson(r.body);
  //       return getbankdetail;
  //     }
  //   } catch (error) {
  //     print(error.toString());
  //   }
  // }

  ///get all lead Count  new 21....................

  // static getleadcountApi() async {
  //   var prefs = GetStorage();
  //   token = prefs.read("token");
  //   print(token);
  //   var headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  //   var url = baseUrl + 'lead/count';
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url), headers: headers);
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       Getleadcount getleadcount = getleadcountFromJson(r.body);
  //       return getleadcount;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///post Chat support api..new 22...........................

  static userChatsupportApi(
    var comment,
  ) async {
    var prefs = GetStorage();
    token = prefs.read("token");
    print(token);
    var headers = {
      'Authorization': 'Bearer $token',
    };
    print(headers);
    var url = baseUrl + 'support-ticket';

    var body = {
      "comment": comment,
    };
    print(body);
    http.Response r =
        await http.post(Uri.parse(url), body: body, headers: headers);
    print(r.body);
    if (r.statusCode == 200) {
      return r;
    } else {
      Get.snackbar('Error', 'Details');
      return r;
    }
  }

  //add bank details..................................................................

  static addbankinApi(
    var accHolderName,
    var bankname,
    var accnumber,
    var confirmaccnumber,
    var ifsccode,
  ) async {
    var url = baseUrl + 'api/addbank';

    var body = {
      "accHolderName": accHolderName,
      "bankname": bankname,
      "accnumber": accnumber,
      "confirmaccnumber": confirmaccnumber,
      "ifsccode": ifsccode,
    };

    http.Response r = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(r.body);
    if (r.statusCode == 200) {
      return r;
    } else {
      Get.snackbar('Error', 'Details');
      return r;
    }
  }

  //addpersonal details..................................

  // static addpersonalApi(var fullname,var phone,var city,var state,
  //     var email,var profession,var DOB,var gender) async {
  //   var prefs = GetStorage();
  //   userid = prefs.read('id');
  //   print("userid  $userid");
  //
  //   var url = baseUrl + 'api/updateuser/$userid';
  //   var body = {
  //     "fullname":fullname,
  //     "phone":phone,
  //     "city":city,
  //     "state":state,
  //     "email":email,
  //     "profession":profession,
  //     "DOB":DOB,
  //     "gender":gender,
  //   };
  //
  //   http.Response r = await http.put(Uri.parse(url),body: body,);
  //   print(r.body);
  //   if(r.statusCode == 200) {
  //     return r;
  //   }
  //   else {
  //     Get.snackbar('Error', 'Details');
  //     return r;
  //   }
  //
  // }

  ///get all top earning partner API.......................................................

  // static gettopearninhgApi() async {
  //   var url = baseUrl + 'api/footergetbanner';
  //   // var headers = {
  //   //   'Authorization': 'Bearer $token'
  //   // };
  //
  //   try {
  //     http.Response r = await http.get(Uri.parse(url));
  //     print(r.body.toString());
  //     if (r.statusCode == 200) {
  //       //list is here
  //       List<TopEarningPartnerModel> gettopearning =
  //       topEarningPartnerModelFromJson(r.body);
  //       return gettopearning;
  //     }
  //   } catch (error) {
  //     return;
  //   }
  // }

  ///login with Facebook Api...............................

  static loginWithFacebook(String fbToken) async {
    //CallLoader.loader();
    try {
      var headers = {'Content-Type': 'application/json'};
      var request =
          http.Request('POST', Uri.parse(baseUrl + 'user/login/facebook'));
      request.body = json.encode({"fbToken": fbToken});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      http.Response r = await http.Response.fromStream(response);
      var data = jsonDecode(r.body);
      if (response.statusCode == 200) {
        // CallLoader.hideLoader();
        var prefs = GetStorage();
        prefs.write("token", json.decode(r.body)['data']['loginToken']);
        token = prefs.read("token");
        if (data['data']['phoneNumberVerified']) {
          //Get.offAll(() => BottomBarScreen());
        } else {
          //Get.offAll(() => EnterMobileScreen());
        }
      } else {
        //CallLoader.hideLoader();
        //CallLoader.errorDialog(jsonDecode(r.body)["error"]);
      }
    } on HttpException catch (e) {
      //CallLoader.hideLoader();
      //CallLoader.errorDialog(e.message);
    }
  }

  ///login with google..................................
  static loginWithGoogle(String gToken) async {
    //CallLoader.loader();
    try {
      var headers = {'Content-Type': 'application/json'};
      var request =
          http.Request('POST', Uri.parse(baseUrl + 'user/login/google'));
      request.body = json.encode({"googleIdToken": gToken});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      http.Response r = await http.Response.fromStream(response);
      var data = jsonDecode(r.body);
      if (response.statusCode == 200) {
        //CallLoader.hideLoader();
        var prefs = GetStorage();
        prefs.write("token", json.decode(r.body)['data']['loginToken']);
        token = prefs.read("token");
        if (data['data']['phoneNumberVerified']) {
          //Get.offAll(() => BottomBarScreen());
        } else {
          //Get.offAll(() => EnterMobileScreen());
        }
      } else {
        //CallLoader.hideLoader();
        //CallLoader.errorDialog(jsonDecode(r.body)["error"]);
      }
    } on HttpException catch (e) {
      //CallLoader.hideLoader();
      //CallLoader.errorDialog(e.message);
    }
  }

  static editMobile(String mobile) async {
    //CallLoader.loader();
    try {
      var headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json'
      };
      var request =
          http.Request('PUT', Uri.parse(baseUrl + 'user/phone-number'));
      request.body = json.encode({"phoneNumber": mobile});
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      http.Response r = await http.Response.fromStream(response);
      if (response.statusCode == 200) {
        //CallLoader.hideLoader();
        //Get.to(() => VerifyMobileScreen());
      } else {
        //CallLoader.hideLoader();
        //CallLoader.errorDialog(jsonDecode(r.body)['error']);
      }
    } on HttpException catch (e) {
      //CallLoader.hideLoader();
      //CallLoader.errorDialog(e.message);
    }
  }

  static verifyMobile({required String mobile, required String otp}) async {
    //CallLoader.loader();
    try {
      var headers = {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json'
      };
      var request =
          http.Request('POST', Uri.parse(baseUrl + 'user/verify-phone-number'));
      request.body = json.encode({"phoneNumber": mobile, "otp": otp});
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      http.Response r = await http.Response.fromStream(response);
      //CallLoader.hideLoader();
      if (response.statusCode == 200) {
        // Get.offAll(() => BottomBarScreen());
      } else {
        //CallLoader.errorDialog(jsonDecode(r.body)["error"]);
      }
    } on HttpException catch (e) {
      // CallLoader.hideLoader();
      //CallLoader.errorDialog(e.message);
    }
  }

  ///from here we have to define cart.....
  ///
  ///
  // import 'package:dio/dio.dart';
  //import 'package:flutter/material.dart';
  //import 'package:food_app/screens/widget/common_Loader.dart';
  // import 'package:get/get.dart' as g;

  ///

  // class UpdateCartEndProvider{
  // Dio client;
  // UpdateCartEndProvider({required this.client});
  ///update your cart...dio......................
  // updateCart(int quantity, var id) async{
  // var data = {
  // "productId": id,
  // "quantity": quantity
  // };
  //
  // try {
  // CommanLoader.loader();
  // Response r =  await client.put('/cart/quantity', data: data);
  //
  //
  // if (r.statusMessage == 'OK') {
  // CommanLoader.hideLoader();
  // g.Get.snackbar("success", r.data['msg'],
  // snackPosition: g.SnackPosition.BOTTOM,
  // backgroundColor: Colors.white
  // );
  // }
  //
  //
  // else {
  // CommanLoader.hideLoader();
  // CommanLoader.message(r.data['name']);
  // }
  // } on DioError catch (e) {
  // return Future.error(e.message.toString());
  // }
  // }
  //
  ///remove cart from dio....
  // removeItem( var id) async{
  // var data = {
  // "productId": id,
  // "quantity": 0
  // };
  //
  // try {
  // CommanLoader.loader();
  // Response r =  await client.put('/cart/quantity', data: data);
  //
  // if (r.statusMessage == 'OK') {
  // CommanLoader.hideLoader();
  // g.Get.snackbar("success", r.data['msg'],
  // snackPosition: g.SnackPosition.BOTTOM,
  // backgroundColor: Colors.white
  // );
  // }
  //
  //
  // else {
  // CommanLoader.hideLoader();
  // CommanLoader.message(r.data['name']);
  // }
  // } on DioError catch (e) {
  // return Future.error(e.message.toString());
  // }
  // }
  ///from dio add to cart.......
  // addToCart(var id) async {
  // var data = {
  // "productId": id
  // };
  //
  // try {
  // CommanLoader.loader();
  // Response r = await client.post('/cart',data: data);
  //
  // if (r.statusMessage == 'OK') {
  // CommanLoader.hideLoader();
  // CommanLoader.hideLoader();
  // g.Get.snackbar("success", r.data['msg'],
  // snackPosition: g.SnackPosition.BOTTOM,
  // backgroundColor: Colors.white
  // );
  // } else {
  // CommanLoader.hideLoader();
  // CommanLoader.message(r.data['error']);
  // }
  // } on DioError catch (e) {
  // CommanLoader.hideLoader();
  // return CommanLoader.message(e.message.toString());
  // }
  // }
  //
  // }

  /// here api client dio...
// ignore_for_file: unnecessary_overrides

  // import 'package:dio/dio.dart';
  // import 'package:food_app/screens/widget/common_Loader.dart';
  //
  // class Client {
  // Dio init() {
  // Dio _dio = Dio();
  // _dio.interceptors.add(ApiInterceptor());
  // _dio.options.baseUrl = 'http://97.74.87.200:5000';
  // return _dio;
  // }
  // }
  //
  // class ApiInterceptor extends Interceptor {
  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  // super.onError(err, handler);
  // }
  //
  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  // if (token != '') {
  // options.headers["Authorization"] = 'Bearer $token';
  // } else {}
  // super.onRequest(options, handler);
  // }
  //
  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  // super.onResponse(response, handler);
  // }
  // }
}
