
///CLASS FOR LIST DTO SERIALIZATION

class ListDataDTO<T> {
  List<T> dtoList;
  int count;

  ListDataDTO({required this.dtoList, this.count = 0});

  factory ListDataDTO.fromJson(
          {required Map<String, dynamic> json,
          required String? key,
          required T Function(Map<String, dynamic> item) fromJsonResponse}) =>
      ListDataDTO<T>(
          dtoList: (json[key] as List)
              .map((item) => fromJsonResponse(item as Map<String, dynamic>))
              .toList(),
          count: json['totalCount'] ?? 0);

  factory ListDataDTO.fromList(
          {required List<T> dtoList, required int count}) =>
      ListDataDTO<T>(dtoList: dtoList, count: count);

  factory ListDataDTO.empty() => ListDataDTO(dtoList: [], count: 0);
}
