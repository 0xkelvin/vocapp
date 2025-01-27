import 'package:flutter_test/flutter_test.dart';
import 'package:voca_notes/features/dictionary/domain/entities/dictionary_item/dictionary_item.dart';

void main() {
  group('DictionaryItem', () {
    test('fromJson should correctly parse JSON input', () {
      final json = {
        'lang_from': 'vi_VI',
        'lang_to': 'en_US',
        'word_from': {
          'word': 'Cảm ơn',
          'pronunciation': null,
          'details': [
            {
              'type': 'Synonym',
              'description': 'Cảm tạ',
              'example': 'Cảm ơn bạn đã giúp đỡ.'
            },
            {
              'type': 'Interjection',
              'description': 'Thank you!',
              'example': 'Cảm ơn rất nhiều!'
            }
          ]
        },
        'word_to': {
          'word': 'thank you',
          'pronunciation': '/θæŋk juː/',
          'details': [
            {
              'type': 'Synonym',
              'description': 'Thanks',
              'example': 'Thank you for your help.'
            },
            {
              'type': 'Interjection',
              'description': 'used to express gratitude.',
              'example': 'e.g. “thank you for your kindness”'
            }
          ]
        },
        'user_definition': '',
        'metadata': {'user_id': null, 'timestamp': null}
      };

      final model = DictionaryItem.fromJson(json);

      expect(model.langFrom, 'vi_VI');
      expect(model.langTo, 'en_US');

      // Test word_from
      expect(model.wordFrom.word, 'Cảm ơn');
      expect(model.wordFrom.pronunciation, isNull);
      expect(model.wordFrom.details.length, 2);
      expect(model.wordFrom.details[0].type, 'Synonym');
      expect(model.wordFrom.details[0].description, 'Cảm tạ');
      expect(model.wordFrom.details[0].example, 'Cảm ơn bạn đã giúp đỡ.');

      // Test word_to
      expect(model.wordTo.word, 'thank you');
      expect(model.wordTo.pronunciation, '/θæŋk juː/');
      expect(model.wordTo.details.length, 2);
      expect(model.wordTo.details[0].type, 'Synonym');
      expect(model.wordTo.details[0].description, 'Thanks');
      expect(model.wordTo.details[0].example, 'Thank you for your help.');

      // Test user_definition
      expect(model.userDefinition, '');

      // Test metadata
      expect(model.metadata?.userId, isNull);
      expect(model.metadata?.timestamp, isNull);
    });
  });
}
