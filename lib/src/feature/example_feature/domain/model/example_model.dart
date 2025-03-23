import 'package:template_project/app/dto/model.dart';
import 'package:template_project/src/feature/example_feature/data/dto/example_dto.dart';

class ExampleModel extends ModelItem {
  ExampleModel();

  factory ExampleModel.fromDto(ExampleDTO dto) => ExampleModel();
}
