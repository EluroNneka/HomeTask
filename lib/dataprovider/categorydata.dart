import 'package:drohometask/models/categories.dart';
import 'package:drohometask/models/products.dart';

class CategoryDataProvider{

  Future<Category> getCategoryItem() async{
    List<CategoryItem> categoryItems = [
      CategoryItem(
        image: 'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/05/GettyImages-500829979_header-1024x575.jpg?',
        name: 'HeadAche',
      ),
      CategoryItem(
        image: 'https://blog.theralogix.com/wp-content/uploads/2020/05/supplements-for-premenopausal-women.png',
        name: 'Supplement',
      ),
      CategoryItem(
        image: 'https://www.beaumont.org/images/default-source/news/happy-infant.jpg',
        name: 'Infant',
      ),
      CategoryItem(
        image: 'https://static.toiimg.com/thumb/msid-21952311,width-1070,height-580,overlay-toi_sw,pt-32,y_pad-40,resizemode-75,imgsize-15263/21952311.jpg',
        name: 'Cold',
      ),

    ];
    return Category(categoryItem:categoryItems);
  }


}