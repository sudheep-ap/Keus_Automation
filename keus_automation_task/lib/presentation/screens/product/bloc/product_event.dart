part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  factory ProductEvent.initailQuantity() = InitailQuantity;

  factory ProductEvent.addQuantity() = AddQuantity;

  factory ProductEvent.removeQuantity() = RemoveQuantity;
}
