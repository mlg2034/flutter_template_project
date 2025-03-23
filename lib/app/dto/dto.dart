import 'package:template_project/app/dto/model.dart';

abstract class DTO<M extends ModelItem>{
  M toModel();
}