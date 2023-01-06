import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewListViewBuilderOne extends StatelessWidget {
  const ViewListViewBuilderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();  // sementara 
    // return BlocProvider(
    //   create: (context) => ProductBloc( ),
    //   child: Scaffold(
    //       appBar: AppBar(
    //         title: const Center(child: Text("ListView Builder one")),
    //       ),
    //       body: Column(
    //         children: [
    //           TextButton(onPressed: () {

    //           }, child: const Text("Add")),
    //           Expanded(
    //               child: ListView.builder(
    //             itemCount: 3,
    //             itemBuilder: ((context, index) {
    //               return Text(index.toString());
    //             }),
    //           ))
    //         ],
    //       )),
    // );
  }
}

class Product {
  String? imageUrl;
  String? name;
  int? price;

  Product({this.imageUrl = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  ProductBloc(List<Product> initialState) : super(initialState);

  // List<Product> get initialState => [];

  Stream<List<Product>> mapEventToState(int event) async* {
    // return null;
    List<Product> products = [];
    for (int i = 0; i < event; i++);
    products.add(Product(
        imageUrl: 'https://picsum.photos/250?image=9',
        name: "produk 1" + toString(),
        price: (event + 1) * 5000));
    yield products;
  }
}
