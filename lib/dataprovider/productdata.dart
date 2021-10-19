import 'package:drohometask/models/products.dart';

class ProductDataProvider{

  Future<Product> getProductItem() async{
    List<ProductItem> productItems = [
      ProductItem(
        productImage: 'https://i1.wp.com/lifebackpharmacy.com/wp-content/uploads/2021/03/MB-Paracetamol-Tablets-8-x12.jpg?fit=225%2C225&ssl=1',
        productName: 'Paracetamol',
        form: 'Tablet',
        weight: '500mg',
        price: 350.00,
        quantity: 1,
        manu: "M&B",
        constituents:'Paracetamol',
        size: '8 X 12 Tablets(96)',
        id: 'PRO246810',
      ),
      ProductItem(
        productImage: 'https://previews.123rf.com/images/windsurfer62/windsurfer622003/windsurfer62200300047/144086432-paris-france-january-2020-boxes-of-doliprane-and-dafalgan-a-paracetamol-based-analgesic-commonly-use.jpg',
        productName: 'Doliprane',
        form: 'Capsule',
        weight: '1000mg',
        price: 350.00,
        quantity: 1,
        manu:'Sanofi',
        constituents: 'Paracetamol',
        size: '8 X 12 Capsules(96)',
        id: 'PRO24639',


      ),
      ProductItem(
        productImage: 'https://cdn1.apopixx.de/300/web_schraeg/01126111.jpg',
        productName: 'Paracetamol',
        form: 'Tablet',
        weight: '500mg',
        price:  350.00,
        quantity: 1,
        manu: 'RatioPharm',
        size: '2 x 10 Tablets(20)',
        id: 'PRO246821',
        constituents: 'Paracetamol',

      ),
      ProductItem(
        productImage: 'https://pharmacy.marvicanihealth.com/wp-content/uploads/2020/09/emzor-paracetamol-tablets-247x250.jpg',
        productName: 'Paracetamol',
        form: 'Tablet',
        weight: '500mg',
        price: 350.00,
        quantity: 1,
        manu: 'Emzor Pharmaceuticals',
        size: '8 x 12 Tablets(96)',
        id: 'PRO356813',
        constituents: 'Paracetamol',
      ),
      ProductItem(
        productImage: 'https://www.emeds.pk//upload/pro-imges/image-9/panadol-500mg.jpg' ,
        productName: 'Panadol',
        form: 'Tablet',
        weight: '500mg',
        price: 350.00,
        quantity: 1,
        manu: 'gsk',
        size: '20 x 10 Tablets(200)',
        id: 'PRO358910',
        constituents: 'Paracetamol',

      ),
      ProductItem(
        productImage: 'https://images.theconversation.com/files/321639/original/file-20200319-22610-18gca3.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop',
        productName: 'Ibuprofen',
        form: 'Tablet',
        weight: '400mg',
        price: 350.00,
        quantity: 1,
        size: '1 x 16 Tablets(16)',
        id: 'PRO245710',
        manu: 'Bells Healthcare',
        constituents: 'Ibuprofen',
      ),

    ];
    return Product(productItems:productItems);
  }


  Future<Product> getCartItem() async {
    List<ProductItem> cartItems = [
      ProductItem(
        productImage: 'https://i1.wp.com/lifebackpharmacy.com/wp-content/uploads/2021/03/MB-Paracetamol-Tablets-8-x12.jpg?fit=225%2C225&ssl=1',
        productName: 'Paracetamol',
        form: 'Tablet',
        weight: '500mg',
        price: 350.00,
        quantity: 1,
        manu: "M&B",
        constituents:'Paracetamol',
        size: '8 X 12 Tablets(96)',
        id: 'PRO246810',
      ),
      ProductItem(
        productImage: 'https://previews.123rf.com/images/windsurfer62/windsurfer622003/windsurfer62200300047/144086432-paris-france-january-2020-boxes-of-doliprane-and-dafalgan-a-paracetamol-based-analgesic-commonly-use.jpg',
        productName: 'Doliprane',
        form: 'Capsule',
        weight: '1000mg',
        price: 350.00,
        quantity: 1,
        manu:'Sanofi',
        constituents: 'Paracetamol',
        size: '8 X 12 Capsules(96)',
        id: 'PRO24639',


      ),
      ProductItem(
        productImage: 'https://cdn1.apopixx.de/300/web_schraeg/01126111.jpg',
        productName: 'Paracetamol',
        form: 'Tablet',
        weight: '500mg',
        price:  350.00,
        quantity: 1,
        manu: 'RatioPharm',
        size: '2 x 10 Tablets(20)',
        id: 'PRO246821',
        constituents: 'Paracetamol',

      ),
      ProductItem(
        productImage: 'https://pharmacy.marvicanihealth.com/wp-content/uploads/2020/09/emzor-paracetamol-tablets-247x250.jpg',
        productName: 'Paracetamol',
        form: 'Tablet',
        weight: '500mg',
        price: 350.00,
        quantity: 1,
        manu: 'Emzor Pharmaceuticals',
        size: '8 x 12 Tablets(96)',
        id: 'PRO356813',
        constituents: 'Paracetamol',
      ),
      ProductItem(
        productImage: 'https://www.emeds.pk//upload/pro-imges/image-9/panadol-500mg.jpg' ,
        productName: 'Panadol',
        form: 'Tablet',
        weight: '500mg',
        price: 350.00,
        quantity: 1,
        manu: 'gsk',
        size: '20 x 10 Tablets(200)',
        id: 'PRO358910',
        constituents: 'Paracetamol',

      ),
      ProductItem(
        productImage: 'https://images.theconversation.com/files/321639/original/file-20200319-22610-18gca3.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop',
        productName: 'Ibuprofen',
        form: 'Tablet',
        weight: '400mg',
        price: 350.00,
        quantity: 1,
        size: '1 x 16 Tablets(16)',
        id: 'PRO245710',
        manu: 'Bells Healthcare',
        constituents: 'Ibuprofen',
      ),

    ];
    return Product(productItems:cartItems);
  }
}