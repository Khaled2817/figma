import 'package:flutter/material.dart';
import 'package:untitled/core/constants/images.dart';
import 'package:untitled/core/widget/checkbox_widget.dart';
import 'package:untitled/core/widget/svg_widget.dart';
import 'package:untitled/features/menu_information_comment/data/models/categories_maodel.dart';
import 'package:untitled/features/menu_information_comment/data/models/comment_model.dart';
import 'package:untitled/features/menu_information_comment/data/models/information_model.dart';
import 'package:untitled/features/menu_information_comment/data/models/sort_model.dart';

class MenuProvider extends ChangeNotifier {
  List<CommentModel> commentList = [
    CommentModel(
        textName: 'Ahmed Abd Elgany',
        textComment: 'Lorem ipsum dolor sit amet, consectetu',
        widget: SvgWidget(svg: Images.starfram),
        textRate: ':4/5'),
         CommentModel(
        textName: 'Ahmed Abd Elgany',
        textComment: 'Lorem ipsum dolor sit amet, consectetu',
        widget: SvgWidget(svg: Images.starfram),
        textRate: ':4/5'),
         CommentModel(
        textName: 'Ahmed Abd Elgany',
        textComment: 'Lorem ipsum dolor sit amet, consectetu',
        widget: SvgWidget(svg: Images.starfram),
        textRate: ':4/5'),
         CommentModel(
        textName: 'Ahmed Abd Elgany',
        textComment: 'Lorem ipsum dolor sit amet, consectetu',
        widget: SvgWidget(svg: Images.starfram),
        textRate: ':4/5'),
  ];


List<InformationModel> informationList=[
InformationModel(texthead:"Minimum delivery amount" , texthint: '\$ 15',),
InformationModel(texthead:"Service time" , texthint: 'Credit/bank card, Cash',),
InformationModel(texthead:"10:00 - 23:00" , texthint: '10:00 - 23:00',),
InformationModel(texthead:"Phone Number" , texthint: '+201096722199',),
];

List<CategoriesMaodel> categoriessModellist=[


  CategoriesMaodel(text:'CHIS'),
  CategoriesMaodel(text:'Burger'),
  CategoriesMaodel(text:'Burger'),
  CategoriesMaodel(text:'Burger'),
  CategoriesMaodel(text:'Burger'),
  CategoriesMaodel(text:'Burger'),
  CategoriesMaodel(text:'Burger'),
  CategoriesMaodel(text:'All'),
];

List<SortModel> sortModelList=[
SortModel(text:"Top Rated " , widget:CheckBoxWidget(check:false, onChange: (bool val) {  },) ),
SortModel(text:"Cost High to Low" , widget: CheckBoxWidget(check:false, onChange: (bool val) {  },)),
SortModel(text: "Cost Low to High", widget: CheckBoxWidget(check:false, onChange: (bool val) {  },)),
];

}
