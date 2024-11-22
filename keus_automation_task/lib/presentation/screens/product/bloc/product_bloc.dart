import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@lazySingleton
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initial()) {
    on<AddQuantity>(addQuantity);
    on<RemoveQuantity>(removeQuantity);
    on<InitailQuantity>(initialQuantity);
  }

  FutureOr<void> initialQuantity(
      InitailQuantity event, Emitter<ProductState> emit) {
    emit(state.copyWith(itemQuantity: 1));
  }

  FutureOr<void> addQuantity(ProductEvent event, Emitter<ProductState> emit) {
    emit(state.copyWith(itemQuantity: state.itemQuantity + 1));
  }

  FutureOr<void> removeQuantity(
      ProductEvent event, Emitter<ProductState> emit) {
    if (state.itemQuantity > 0) {
      emit(state.copyWith(itemQuantity: state.itemQuantity - 1));
    }
  }
}
