class Products {
  String _productName;
  String _productWeight;
  String _productQuality;
  String _productStock;
  String _productPrice;
  String _productDescription;

  Products(this._productName, this._productWeight, this._productQuality,
      this._productStock, this._productPrice, this._productDescription);

  Products.map(dynamic, obj) {
    this._productName = obj['productName'];
    this._productWeight = obj['productWeight'];
    this._productQuality = obj['productQuality'];
    this._productStock = obj['productStock'];
    this._productPrice = obj['productPrice'];
    this._productDescription = obj['productDescription'];
  }

  String get productName => _productName;
  String get productWeight => _productWeight;
  String get productQuality => _productQuality;
  String get productStock => _productStock;
  String get productPrice => _productPrice;
  String get productDescription => _productDescription;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['productName'] = _productName;
    map['productWeight'] = _productWeight;
    map['productQuality'] = _productQuality;
    map['productStock'] = _productStock;
    map['productPrice'] = _productPrice;
    map['productDescription'] = _productDescription;
    return map;
  }

  Products.fromMap(Map<String, dynamic> map) {
    this._productName = map['productName'];
    this._productWeight = map['productWeight'];
    this._productQuality = map['productQuality'];
    this._productStock = map['productStock'];
    this._productPrice = map['productPrice'];
    this._productDescription = map['productDescription'];
  }
}
