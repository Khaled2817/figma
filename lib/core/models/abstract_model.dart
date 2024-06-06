abstract class AbstractModel{


late String title;
late String image;
late String price;
late String description;

}

abstract class SuperAbstractModel{


List<AbstractModel>? superList();
void onTap(int index);

}