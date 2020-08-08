part of firefly;


class _Support extends StatelessWidget {

  final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
	List<ProductDetails> products;

	Future<void> initStoreInfo() async {

		const Set<String> _kIds = {'support', 'support2'};
		final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
		products = response.productDetails;
		for (ProductDetails product in products) {
			print('${product.title}: ${product.description} (cost is ${product.price})');
		}
		print('Innitted');
    
  }

  void _buyProduct(id) async {
		final PurchaseParam purchaseParam = PurchaseParam(productDetails: products.firstWhere((element) => element.id == id ));
		InAppPurchaseConnection.instance.buyConsumable(purchaseParam: purchaseParam);
  }


  Widget build(BuildContext context) {
		initStoreInfo();
    return PageScroll(
			ContainerGroup([
				TextTitle('Support'),
				ContainerPad(),
				ButtonPlain("Buy me a hot chocolate for \$1", (_){
					_buyProduct('support');
				}),
				ButtonPlain("Buy me snack for \$3", (_){
					_buyProduct('support2');
				}),
				ContainerPad(),
				ContainerPad(),
				TextPlain('Thank you for all those who have supported!', center : true)
			])
		);
  }

}