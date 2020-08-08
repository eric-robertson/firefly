part of firefly;


class _Support extends StatelessWidget {

  final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
	
	Future<void> initStoreInfo() async {
		print('initStoer');
		final bool isAvailable = await _connection.isAvailable();
    if (!isAvailable) {
      print('not available');
      return;
    }

    ProductDetailsResponse productDetailResponse = await _connection.queryProductDetails({'support'});
    if (productDetailResponse.error != null) {
      print('error');
      return;
    }
		print(productDetailResponse.productDetails);

    if (productDetailResponse.productDetails.isEmpty) {
      print('empty');
    }
		print('here1');
    final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
    if (purchaseResponse.error != null) {
      print('hmmm');
    }
		print('here2');

    final List<PurchaseDetails> verifiedPurchases = [];
    for (PurchaseDetails purchase in purchaseResponse.pastPurchases) {
			print('purcahse');
      print( purchase );
    }

		print('here3');
		const Set<String> _kIds = {'support'};
		final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
		if (response.notFoundIDs.isNotEmpty) {
			print('Not Found');
			print( response.notFoundIDs );
		} else {
			print('here11');
			List<ProductDetails> products = response.productDetails;
			for (ProductDetails product in products) {
				print(product.id);
				print('${product.title}: ${product.description} (cost is ${product.price})');
			}
			print('here2');
			print(products[0].toString());
			// Example: purchasing the first available item.
			final PurchaseParam purchaseParam = PurchaseParam(productDetails: products[0]);
			InAppPurchaseConnection.instance.buyConsumable(purchaseParam: purchaseParam);
		}
    
  }

  void _buyProduct(ProductDetails prod) async {
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: prod);
    await _connection.buyConsumable(purchaseParam: purchaseParam, autoConsume: true);
  }


  Widget build(BuildContext context) {
		initStoreInfo();
    return PageScroll(
			ContainerGroup([
				TextTitle('Support'),
				ContainerPad(),
				ButtonPlain("Buy me a coffee for \$1", (_){
					_buyProduct(ProductDetails(
						id : 'support',
						title: 'Buy me a cup of coffee',
						description: 'Help support apps you love!',
						price: "\$1.00"
					));
				}),
				ContainerPad(),
				ContainerPad(),
				TextPlain('Thank you for all those who have supported!', center : true)
			])
		);
  }

}