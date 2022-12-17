import 'package:flutter/physics.dart';

class Clothes {
//menStyle name list
  List menStyle = [
    'Teshert',
    'dress',
    'jeans',
  ];
//iphone men list
  List menPrice = [
    '1000',
    '2000',
    '3000',
  ];
//men image list
  List menImage = [
    'menShirt.png',
    'menShirt.png',
    'menShirt.png',
  ];

//Women name list
  List Women = [
    'dress',
    'jeans',
    'shoes',
  ];
//women price list
  List womenPrice = [
    '1000',
    '2000',
    '3000',
  ];
//women image list
  List womenImage = [
    'womendress.png',
    'womendress.png',
    'womenShose.png',
  ];
//kids list
  List Kids = [
    'dress',
    'jeans',
    'shoes',
  ];
//kids price list
  List kidsPrice = [
    '1000',
    '2000',
    '3000',
  ];

//kids image list
  List kidsImages = [
    'kidsshert.png',
    'kidsphoto.png',
    'kidsshert.png',
  ];

//get all phone name to one list and return it
  List getAllclothes() {
    List allPhoneName = [];
    allPhoneName.addAll(menStyle);
    allPhoneName.addAll(Kids);
    allPhoneName.addAll(Women);
    return allPhoneName;
  }

  //get all phone price to one list and return it
  List getAllClothesPrice() {
    List allPhonePrice = [];
    allPhonePrice.addAll(menPrice);
    allPhonePrice.addAll(kidsPrice);
    allPhonePrice.addAll(womenPrice);
    return allPhonePrice;
  }

  //get all clotheImage to one list and return it
  List getAllClothesImage() {
    List allPhoneImage = [];
    allPhoneImage.addAll(menImage);
    allPhoneImage.addAll(kidsImages);
    allPhoneImage.addAll(womenImage);
    return allPhoneImage;
  }

  //get all clotheImage to one list and return it

}
