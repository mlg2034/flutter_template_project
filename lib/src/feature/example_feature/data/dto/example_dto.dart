import 'package:template_project/app/dto/dto.dart';
import 'package:template_project/src/feature/example_feature/domain/model/example_model.dart';

class ExampleDTO extends DTO<ExampleModel> {
  @override
  ExampleModel toModel() => ExampleModel();
}
