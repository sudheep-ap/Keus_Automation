part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    required int itemQuantity,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
        itemQuantity: 1,
      );
}
