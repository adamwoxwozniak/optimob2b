import 'package:freezed_annotation/freezed_annotation.dart';

import 'document.model.dart';

part 'documents_response.model.freezed.dart';
part 'documents_response.model.g.dart';

@freezed
class DocumentsResponse with _$DocumentsResponse {
  const factory DocumentsResponse({@Default([]) List<Document> items, @Default(0) int itemsLength}) = _DocumentsResponse;

  factory DocumentsResponse.fromJson(Map<String, dynamic> json) => _$DocumentsResponseFromJson(json);
}
