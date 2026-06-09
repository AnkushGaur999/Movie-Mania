sealed class DataState<T> {
  final T? data;
  final String? error;

  const DataState({this.data, this.error});
}

final class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

final class DataFailed<T> extends DataState<T> {
  const DataFailed(String error) : super(error: error);
}
