part of vk_library;

/// Interface describing [attached link in post](https://vk.com/dev/objects/link).
class LinkObject {
  /// The object that is used for the interface
  final Json object;
  const LinkObject(this.object);

  /// Link URL.
  String get url => object["url"];

  /// Link title.
  String get title => object["title"];

  /// Link signature (if available).
  String? get caption => object["caption"];

  /// Description of the link.
  String get description => object["description"];

  /// Preview image, object [photos](https://vk.com/dev/objects/photo) (if any).
  PhotoObject? get photo {
    final photo = object["photo"];
    if (photo != null) return PhotoObject(photo);
  }

  /// Product information (if available). The field is returned for links to stores, for example, Aliexpress.
  LinkObjectProduct? get product {
    final product = object["product"];
    if (product != null) return LinkObjectProduct(product);
  }

  /// Information about the button to navigate (if available).
  LinkObjectButton? get button {
    final button = object["button"];
    if (button != null) return LinkObjectButton(button);
  }

  ///The content wiki page identifier to preview the page content. Returned in the format `"owner_id_page_id"`.
  String get previewPage => object["preview_page"];

  /// Content page URL to preview the page content.
  String get previewUrl => object["preview_url"];
}

/// Interface for the [LinkObject.product] field
class LinkObjectProduct {
  /// The object that is used for the interface
  final Json object;
  const LinkObjectProduct(this.object);

  /// [Price object](https://vk.com/dev/price)
  LinkObjectProductPrice get price => LinkObjectProductPrice(object["price"]);
}

/// Interface for the [LinkObjectProduct.price] field
class LinkObjectProductPrice {
  /// The object that is used for the interface
  final Json object;
  const LinkObjectProductPrice(this.object);

  /// The integer value of the price multiplied by 100.
  int get amount => object["amount"];

  /// Object `currency`.
  LinkObjectProductPriceCurrency get currency =>
      LinkObjectProductPriceCurrency(object["currency"]);

  /// A string with a localized price and currency.
  String get text => object["text"];
}

/// Interface for the [LinkObjectProductPrice.currency] field
class LinkObjectProductPriceCurrency {
  /// The object that is used for the interface
  final Json object;
  const LinkObjectProductPriceCurrency(this.object);

  /// Currency identifier.
  int get id => object["id"];

  /// Currency lettering.
  String get name => object["name"];
}

/// Interface for the [LinkObject.button] field
class LinkObjectButton {
  /// The object that is used for the interface
  final Json object;
  const LinkObjectButton(this.object);

  /// Button name.
  String get title => object["title"];

  /// Action for the button.
  LinkObjectButtonAction get action => LinkObjectButtonAction(object["action"]);
}

/// Interface for the [LinkObjectButton.action] field
class LinkObjectButtonAction {
  /// The object that is used for the interface
  final Json object;
  const LinkObjectButtonAction(this.object);

  /// Action type.
  LinkObjectButtonActionType get type {
    switch (object["type"]) {
      case "open_url":
        return LinkObjectButtonActionType.OPEN_URL;
      default:
        return LinkObjectButtonActionType.UNKNOWN;
    }
  }

  /// URL to navigate.
  String get url => object["url"];
}

/// Enum for the [LinkObjectButtonAction.type] field
enum LinkObjectButtonActionType {
  /// Open address from the `url` field.
  OPEN_URL,

  /// Unknown.
  UNKNOWN
}
