import 'package:dio/dio.dart';
import 'package:yes_no_ejemplo/domain/dtos/message.dart';
import 'package:yes_no_ejemplo/infrastructure/entities/yes_no_entity.dart';

// https://quicktype.io/
class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final resultSet = await _dio.get('http://yesno.wtf/api');
    final yesNoEntity = YesNoEntity.fromJsonMap(resultSet.data);
    return Message(
        text: yesNoEntity.answer == 'yes'
            ? 'Yo soy groot (Si)'
            : 'Yó soy groot (No)',
        imageUrl: yesNoEntity.image,
        fromWho: FromWho.hers);
  }
}
