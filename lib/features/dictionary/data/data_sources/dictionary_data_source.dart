// ignore_for_file: lines_longer_than_80_chars

import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/entities/dictionary_item/dictionary_item.dart';

abstract class DictionaryDataSource {
  Future<List<DictionaryItem>> getDailyWordList(DateTime datetime);
}

@LazySingleton(as: DictionaryDataSource)
class DictionaryDataSourceImpl implements DictionaryDataSource {
  const DictionaryDataSourceImpl();

  static final data = DictionaryItem.fromJsonList(
    DictionaryDummyDataSource.data,
  );

  @override
  Future<List<DictionaryItem>> getDailyWordList(DateTime datetime) async {
    // Dummy Loading
    await Future.delayed(const Duration(milliseconds: 750));

    // Shuffle the list to randomize the order
    data.shuffle(Random());

    // Generate a random number between 10 and 16
    final randomCount = Random().nextInt(6) + 10;

    // Return the first `randomCount` items from the shuffled list
    return data.take(randomCount).toList();
  }
}

class DictionaryDummyDataSource {
  static final data = [
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Xin chào',
        'pronunciation': null,
        'details': [
          {
            'type': 'Synonym',
            'description': 'Chào',
            'example': 'Xin chào mọi người!'
          },
          {
            'type': 'Interjection',
            'description': 'Hello!',
            'example': 'Alô!, Chào anh!, Chào chị!, Ô nài!, Xin chào!'
          }
        ]
      },
      'word_to': {
        'word': 'hello',
        'pronunciation': '/həˈləʊ/',
        'details': [
          {'type': 'Synonym', 'description': 'Hi', 'example': 'Hello there!'},
          {
            'type': 'Exclamation',
            'description':
                'used as a greeting or to begin a phone conversation.',
            'example': 'e.g. “hello there, Katie!”'
          },
          {
            'type': 'Noun',
            'description': 'an utterance of “hello”; a greeting.',
            'example':
                'e.g. “she was getting polite nods and hellos from people”'
          },
          {
            'type': 'Verb',
            'description': 'say or shout “hello”; greet someone.',
            'example': null
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
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
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tạm biệt',
        'pronunciation': null,
        'details': [
          {
            'type': 'Synonym',
            'description': 'Chào tạm biệt',
            'example': 'Tạm biệt, hẹn gặp lại!'
          },
          {
            'type': 'Interjection',
            'description': 'Goodbye!',
            'example': 'Tạm biệt, mọi người!'
          }
        ]
      },
      'word_to': {
        'word': 'goodbye',
        'pronunciation': '/ɡʊdˈbaɪ/',
        'details': [
          {
            'type': 'Synonym',
            'description': 'Farewell',
            'example': 'Goodbye, see you soon.'
          },
          {
            'type': 'Exclamation',
            'description': 'used to express good wishes when parting.',
            'example': 'e.g. “goodbye, John!”'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Vui vẻ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Synonym',
            'description': 'Hạnh phúc',
            'example': 'Cô ấy luôn vui vẻ.'
          },
          {
            'type': 'Adjective',
            'description': 'Happy or cheerful.',
            'example': 'Cô ấy luôn vui vẻ.'
          }
        ]
      },
      'word_to': {
        'word': 'happy',
        'pronunciation': '/ˈhæpi/',
        'details': [
          {
            'type': 'Synonym',
            'description': 'Joyful',
            'example': 'She felt happy.'
          },
          {
            'type': 'Adjective',
            'description': 'Feeling or showing pleasure or contentment.',
            'example': 'She felt happy.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Buồn',
        'pronunciation': null,
        'details': [
          {
            'type': 'Synonym',
            'description': 'Sầu',
            'example': 'Anh ấy trông buồn.'
          },
          {
            'type': 'Adjective',
            'description': 'Sad or sorrowful.',
            'example': 'Anh ấy trông buồn.'
          }
        ]
      },
      'word_to': {
        'word': 'sad',
        'pronunciation': '/sæd/',
        'details': [
          {
            'type': 'Synonym',
            'description': 'Unhappy',
            'example': 'He looks sad.'
          },
          {
            'type': 'Adjective',
            'description': 'Feeling or showing sorrow; unhappy.',
            'example': 'He looks sad.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Xe',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Phương tiện giao thông có động cơ.',
            'example': 'Anh ấy lái xe đến công ty.'
          }
        ]
      },
      'word_to': {
        'word': 'car',
        'pronunciation': '/kɑːr/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'A road vehicle, typically with four wheels, powered by an internal combustion engine.',
            'example': 'He drives a car to work.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Điện thoại',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thiết bị dùng để liên lạc qua giọng nói.',
            'example': 'Cô ấy đang gọi điện thoại.'
          }
        ]
      },
      'word_to': {
        'word': 'phone',
        'pronunciation': '/fəʊn/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A device for transmitting voice over a distance.',
            'example': 'She is on the phone.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Máy tính',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description':
                'Thiết bị điện tử dùng để tính toán và xử lý dữ liệu.',
            'example': 'Tôi sử dụng máy tính để làm việc.'
          }
        ]
      },
      'word_to': {
        'word': 'computer',
        'pronunciation': '/kəmˈpjuːtər/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'An electronic device for storing and processing data.',
            'example': 'I use a computer for work.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Trường học',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nơi học sinh và sinh viên học tập.',
            'example': 'Trường học mở cửa vào sáng sớm.'
          }
        ]
      },
      'word_to': {
        'word': 'school',
        'pronunciation': '/skuːl/',
        'details': [
          {
            'type': 'Noun',
            'description': 'An institution for educating children.',
            'example': 'The school opens early in the morning.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Giáo viên',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Người dạy học trong trường.',
            'example': 'Giáo viên rất tận tâm với học sinh.'
          }
        ]
      },
      'word_to': {
        'word': 'teacher',
        'pronunciation': '/ˈtiːtʃər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A person who teaches, especially in a school.',
            'example': 'The teacher is very dedicated to the students.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Học sinh',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Người học tập tại trường.',
            'example': 'Học sinh đang làm bài tập.'
          }
        ]
      },
      'word_to': {
        'word': 'student',
        'pronunciation': '/ˈstjuːdənt/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A person who is studying at a school or college.',
            'example': 'The student is doing homework.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Thành phố',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Khu vực đô thị lớn.',
            'example': 'Thành phố rất nhộn nhịp.'
          }
        ]
      },
      'word_to': {
        'word': 'city',
        'pronunciation': '/ˈsɪti/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A large town.',
            'example': 'The city is very bustling.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Làng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Khu vực nông thôn nhỏ.',
            'example': 'Làng rất yên bình.'
          }
        ]
      },
      'word_to': {
        'word': 'village',
        'pronunciation': '/ˈvɪlɪdʒ/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'A small settlement, typically one smaller than a town.',
            'example': 'The village is very peaceful.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Công việc',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Hoạt động kiếm sống.',
            'example': 'Công việc của anh ấy rất bận rộn.'
          }
        ]
      },
      'word_to': {
        'word': 'job',
        'pronunciation': '/dʒɒb/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A paid position of regular employment.',
            'example': 'His job is very busy.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tiền',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Phương tiện thanh toán.',
            'example': 'Anh ấy cần tiền để mua sách.'
          }
        ]
      },
      'word_to': {
        'word': 'money',
        'pronunciation': '/ˈmʌni/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'A medium of exchange in the form of coins and banknotes.',
            'example': 'He needs money to buy books.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Chợ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nơi mua bán hàng hóa.',
            'example': 'Chợ rất đông đúc vào buổi sáng.'
          }
        ]
      },
      'word_to': {
        'word': 'market',
        'pronunciation': '/ˈmɑːrkɪt/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'A regular gathering of people for the purchase and sale of provisions.',
            'example': 'The market is very crowded in the morning.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Cửa hàng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nơi bán lẻ hàng hóa.',
            'example': 'Cô ấy đi đến cửa hàng để mua quần áo.'
          }
        ]
      },
      'word_to': {
        'word': 'shop',
        'pronunciation': '/ʃɒp/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'A building or part of a building where goods or services are sold.',
            'example': 'She goes to the shop to buy clothes.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bệnh viện',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nơi chăm sóc và chữa trị bệnh nhân.',
            'example': 'Bệnh viện rất bận rộn vào cuối tuần.'
          }
        ]
      },
      'word_to': {
        'word': 'hospital',
        'pronunciation': '/ˈhɒspɪtəl/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'An institution providing medical and surgical treatment and nursing care for sick or injured people.',
            'example': 'The hospital is very busy on weekends.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bác sĩ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Người chữa bệnh.',
            'example': 'Bác sĩ đã khám cho bệnh nhân.'
          }
        ]
      },
      'word_to': {
        'word': 'doctor',
        'pronunciation': '/ˈdɒktər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A qualified practitioner of medicine; a physician.',
            'example': 'The doctor examined the patient.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Thuốc',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Chất dùng để chữa bệnh.',
            'example': 'Cô ấy uống thuốc theo chỉ dẫn của bác sĩ.'
          }
        ]
      },
      'word_to': {
        'word': 'medicine',
        'pronunciation': '/ˈmedɪsɪn/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'A substance used for medical treatment, especially a medicine or drug.',
            'example': 'She takes medicine as prescribed by the doctor.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Thể thao',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Hoạt động thể chất có tính cạnh tranh.',
            'example': 'Thể thao giúp cải thiện sức khỏe.'
          }
        ]
      },
      'word_to': {
        'word': 'sport',
        'pronunciation': '/spɔːrt/',
        'details': [
          {
            'type': 'Noun',
            'description': 'An activity involving physical exertion and skill.',
            'example': 'Sport helps improve health.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bóng đá',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Trò chơi thể thao chơi bằng chân.',
            'example': 'Bóng đá là môn thể thao phổ biến.'
          }
        ]
      },
      'word_to': {
        'word': 'football',
        'pronunciation': '/ˈfʊtbɔːl/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A team sport played with a round ball.',
            'example': 'Football is a popular sport.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Âm nhạc',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nghệ thuật tổ chức âm thanh.',
            'example': 'Âm nhạc mang lại niềm vui.'
          }
        ]
      },
      'word_to': {
        'word': 'music',
        'pronunciation': '/ˈmjuːzɪk/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The art of arranging sounds in time.',
            'example': 'Music brings joy.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Phim',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Tác phẩm điện ảnh.',
            'example': 'Chúng tôi xem phim vào cuối tuần.'
          }
        ]
      },
      'word_to': {
        'word': 'movie',
        'pronunciation': '/ˈmuːvi/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A story or event recorded by a camera.',
            'example': 'We watch a movie on weekends.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nghệ thuật',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Sáng tạo và biểu diễn.',
            'example': 'Nghệ thuật là một phần của cuộc sống.'
          }
        ]
      },
      'word_to': {
        'word': 'art',
        'pronunciation': '/ɑːrt/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The expression or application of human creative skill.',
            'example': 'Art is a part of life.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Thư viện',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nơi lưu trữ sách.',
            'example': 'Thư viện có nhiều sách hay.'
          }
        ]
      },
      'word_to': {
        'word': 'library',
        'pronunciation': '/ˈlaɪbrəri/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A building containing books for public use.',
            'example': 'The library has many good books.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Công viên',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Khu vực công cộng có cây xanh.',
            'example': 'Chúng tôi đi dạo trong công viên.'
          }
        ]
      },
      'word_to': {
        'word': 'park',
        'pronunciation': '/pɑːrk/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A large public green area.',
            'example': 'We walk in the park.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Biển',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Vùng nước mặn rộng lớn.',
            'example': 'Gia đình tôi đi biển vào mùa hè.'
          }
        ]
      },
      'word_to': {
        'word': 'sea',
        'pronunciation': '/siː/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The expanse of salt water.',
            'example': 'My family goes to the sea in summer.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Núi',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Địa hình cao lớn.',
            'example': 'Chúng tôi leo núi vào cuối tuần.'
          }
        ]
      },
      'word_to': {
        'word': 'mountain',
        'pronunciation': '/ˈmaʊntən/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A large natural elevation of the earth\'s surface.',
            'example': 'We climb the mountain on weekends.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Rừng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Khu vực nhiều cây cối.',
            'example': 'Rừng rất bí ẩn và thú vị.'
          }
        ]
      },
      'word_to': {
        'word': 'forest',
        'pronunciation': '/ˈfɔːrɪst/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A large area covered chiefly with trees.',
            'example': 'The forest is mysterious and interesting.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Động vật',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Sinh vật sống không phải thực vật.',
            'example': 'Sở thú có nhiều loài động vật.'
          }
        ]
      },
      'word_to': {
        'word': 'animal',
        'pronunciation': '/ˈænɪməl/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A living organism that feeds on organic matter.',
            'example': 'The zoo has many kinds of animals.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Cây',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thực vật lớn có thân gỗ.',
            'example': 'Cây cung cấp bóng mát.'
          }
        ]
      },
      'word_to': {
        'word': 'tree',
        'pronunciation': '/triː/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A perennial plant with an elongated stem.',
            'example': 'Trees provide shade.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Hoa',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Phần sinh sản của thực vật có hoa.',
            'example': 'Hoa hồng rất đẹp.'
          }
        ]
      },
      'word_to': {
        'word': 'flower',
        'pronunciation': '/ˈflaʊər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The seed-bearing part of a plant.',
            'example': 'Roses are very beautiful.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Trái cây',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Quả của cây, thường ăn được.',
            'example': 'Trái cây rất tốt cho sức khỏe.'
          }
        ]
      },
      'word_to': {
        'word': 'fruit',
        'pronunciation': '/fruːt/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The sweet and fleshy product of a tree or plant.',
            'example': 'Fruits are very healthy.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Rau',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thực vật ăn được, thường dùng trong bữa ăn.',
            'example': 'Rau xanh rất bổ dưỡng.'
          }
        ]
      },
      'word_to': {
        'word': 'vegetable',
        'pronunciation': '/ˈvɛdʒtəbl/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A plant or part of a plant used as food.',
            'example': 'Green vegetables are very nutritious.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bánh mì',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thực phẩm làm từ bột mì.',
            'example': 'Bánh mì là món ăn phổ biến.'
          }
        ]
      },
      'word_to': {
        'word': 'bread',
        'pronunciation': '/brɛd/',
        'details': [
          {
            'type': 'Noun',
            'description': 'Food made of flour, water, and yeast.',
            'example': 'Bread is a common food.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Cà phê',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thức uống từ hạt cà phê.',
            'example': 'Cà phê giúp tỉnh táo.'
          }
        ]
      },
      'word_to': {
        'word': 'coffee',
        'pronunciation': '/ˈkɒfi/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A drink made from roasted coffee beans.',
            'example': 'Coffee helps to stay awake.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Trà',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thức uống từ lá trà.',
            'example': 'Trà rất thơm ngon.'
          }
        ]
      },
      'word_to': {
        'word': 'tea',
        'pronunciation': '/tiː/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A drink made by infusing dried tea leaves.',
            'example': 'Tea is very flavorful.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Sữa',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Chất lỏng trắng từ động vật.',
            'example': 'Sữa tươi rất bổ dưỡng.'
          }
        ]
      },
      'word_to': {
        'word': 'milk',
        'pronunciation': '/mɪlk/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A white liquid produced by mammals.',
            'example': 'Fresh milk is very nutritious.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bữa sáng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Bữa ăn đầu tiên trong ngày.',
            'example': 'Bữa sáng rất quan trọng.'
          }
        ]
      },
      'word_to': {
        'word': 'breakfast',
        'pronunciation': '/ˈbrɛkfəst/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The first meal of the day.',
            'example': 'Breakfast is very important.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bữa trưa',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Bữa ăn giữa ngày.',
            'example': 'Chúng tôi ăn bữa trưa lúc 12 giờ.'
          }
        ]
      },
      'word_to': {
        'word': 'lunch',
        'pronunciation': '/lʌntʃ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A meal eaten in the middle of the day.',
            'example': 'We have lunch at 12 o\'clock.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bữa tối',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Bữa ăn cuối ngày.',
            'example': 'Gia đình tôi ăn bữa tối cùng nhau.'
          }
        ]
      },
      'word_to': {
        'word': 'dinner',
        'pronunciation': '/ˈdɪnər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The main meal of the day, eaten in the evening.',
            'example': 'My family eats dinner together.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Món ăn',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thực phẩm đã chế biến.',
            'example': 'Món ăn này rất ngon.'
          }
        ]
      },
      'word_to': {
        'word': 'dish',
        'pronunciation': '/dɪʃ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A particular kind of food prepared for eating.',
            'example': 'This dish is very tasty.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Ngủ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Trạng thái nghỉ ngơi tự nhiên.',
            'example': 'Anh ấy ngủ rất sâu.'
          }
        ]
      },
      'word_to': {
        'word': 'sleep',
        'pronunciation': '/sliːp/',
        'details': [
          {
            'type': 'Verb',
            'description': 'A natural state of rest.',
            'example': 'He sleeps very deeply.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Thức dậy',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Chuyển từ trạng thái ngủ sang tỉnh.',
            'example': 'Cô ấy thức dậy lúc 6 giờ sáng.'
          }
        ]
      },
      'word_to': {
        'word': 'wake up',
        'pronunciation': '/weɪk ʌp/',
        'details': [
          {
            'type': 'Verb',
            'description': 'To stop sleeping.',
            'example': 'She wakes up at 6 AM.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Đi bộ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Di chuyển bằng chân.',
            'example': 'Chúng tôi đi bộ trong công viên.'
          }
        ]
      },
      'word_to': {
        'word': 'walk',
        'pronunciation': '/wɔːk/',
        'details': [
          {
            'type': 'Verb',
            'description':
                'To move at a regular pace by lifting and setting down each foot in turn.',
            'example': 'We walk in the park.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Chạy',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Di chuyển nhanh bằng chân.',
            'example': 'Anh ấy chạy mỗi sáng.'
          }
        ]
      },
      'word_to': {
        'word': 'run',
        'pronunciation': '/rʌn/',
        'details': [
          {
            'type': 'Verb',
            'description': 'To move at a speed faster than a walk.',
            'example': 'He runs every morning.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bơi',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Di chuyển trong nước.',
            'example': 'Cô ấy thích bơi ở biển.'
          }
        ]
      },
      'word_to': {
        'word': 'swim',
        'pronunciation': '/swɪm/',
        'details': [
          {
            'type': 'Verb',
            'description':
                'To move through water by moving the body or parts of the body.',
            'example': 'She likes to swim in the sea.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Lái xe',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Điều khiển phương tiện giao thông.',
            'example': 'Anh ấy lái xe đi làm.'
          }
        ]
      },
      'word_to': {
        'word': 'drive',
        'pronunciation': '/draɪv/',
        'details': [
          {
            'type': 'Verb',
            'description':
                'To operate and control the direction and speed of a motor vehicle.',
            'example': 'He drives to work.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Đọc',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Xem và hiểu chữ viết.',
            'example': 'Cô ấy đọc sách mỗi tối.'
          }
        ]
      },
      'word_to': {
        'word': 'read',
        'pronunciation': '/riːd/',
        'details': [
          {
            'type': 'Verb',
            'description':
                'To look at and comprehend the meaning of written or printed matter.',
            'example': 'She reads books every evening.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Viết',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Tạo chữ viết trên giấy.',
            'example': 'Anh ấy viết thư cho bạn.'
          }
        ]
      },
      'word_to': {
        'word': 'write',
        'pronunciation': '/raɪt/',
        'details': [
          {
            'type': 'Verb',
            'description':
                'To mark letters, words, or other symbols on a surface.',
            'example': 'He writes a letter to his friend.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nghe',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Nhận biết âm thanh.',
            'example': 'Cô ấy thích nghe nhạc.'
          }
        ]
      },
      'word_to': {
        'word': 'listen',
        'pronunciation': '/ˈlɪsən/',
        'details': [
          {
            'type': 'Verb',
            'description': 'To give attention to sound.',
            'example': 'She likes to listen to music.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nói',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Diễn đạt bằng lời.',
            'example': 'Anh ấy nói chuyện với bạn bè.'
          }
        ]
      },
      'word_to': {
        'word': 'speak',
        'pronunciation': '/spiːk/',
        'details': [
          {
            'type': 'Verb',
            'description': 'To say words in order to express thoughts.',
            'example': 'He speaks with friends.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Mua',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Đổi tiền lấy hàng hóa.',
            'example': 'Cô ấy mua một cái áo mới.'
          }
        ]
      },
      'word_to': {
        'word': 'buy',
        'pronunciation': '/baɪ/',
        'details': [
          {
            'type': 'Verb',
            'description': 'To obtain in exchange for payment.',
            'example': 'She buys a new shirt.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Bán',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Đổi hàng hóa lấy tiền.',
            'example': 'Anh ấy bán xe của mình.'
          }
        ]
      },
      'word_to': {
        'word': 'sell',
        'pronunciation': '/sɛl/',
        'details': [
          {
            'type': 'Verb',
            'description':
                'To give or hand over something in exchange for money.',
            'example': 'He sells his car.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Chơi',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Tham gia vào hoạt động giải trí.',
            'example': 'Trẻ em thích chơi ngoài trời.'
          }
        ]
      },
      'word_to': {
        'word': 'play',
        'pronunciation': '/pleɪ/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Engage in activity for enjoyment.',
            'example': 'Children like to play outside.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Hát',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Phát ra âm thanh bằng giọng ca.',
            'example': 'Cô ấy hát rất hay.'
          }
        ]
      },
      'word_to': {
        'word': 'sing',
        'pronunciation': '/sɪŋ/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Produce musical sounds with the voice.',
            'example': 'She sings very well.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nhảy',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Chuyển động theo nhạc.',
            'example': 'Họ nhảy theo điệu nhạc.'
          }
        ]
      },
      'word_to': {
        'word': 'dance',
        'pronunciation': '/dæns/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Move rhythmically to music.',
            'example': 'They dance to the music.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Vẽ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Tạo hình ảnh bằng bút hoặc bút chì.',
            'example': 'Anh ấy vẽ một bức tranh.'
          }
        ]
      },
      'word_to': {
        'word': 'draw',
        'pronunciation': '/drɔː/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Produce a picture using a pencil or pen.',
            'example': 'He draws a picture.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Chụp ảnh',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Tạo hình ảnh bằng máy ảnh.',
            'example': 'Cô ấy thích chụp ảnh phong cảnh.'
          }
        ]
      },
      'word_to': {
        'word': 'photograph',
        'pronunciation': '/ˈfəʊtəɡrɑːf/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Take a picture using a camera.',
            'example': 'She likes to photograph landscapes.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Du lịch',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Đi đến nơi khác để tham quan.',
            'example': 'Họ du lịch khắp thế giới.'
          }
        ]
      },
      'word_to': {
        'word': 'travel',
        'pronunciation': '/ˈtrævəl/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Make a journey, typically of some length.',
            'example': 'They travel around the world.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nghỉ ngơi',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Thư giãn và không làm việc.',
            'example': 'Cô ấy nghỉ ngơi sau giờ làm việc.'
          }
        ]
      },
      'word_to': {
        'word': 'rest',
        'pronunciation': '/rɛst/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Cease work or movement to relax.',
            'example': 'She rests after work.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Làm sạch',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Loại bỏ bụi bẩn.',
            'example': 'Anh ấy làm sạch căn phòng.'
          }
        ]
      },
      'word_to': {
        'word': 'clean',
        'pronunciation': '/kliːn/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Make something free of dirt.',
            'example': 'He cleans the room.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nấu ăn',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Chuẩn bị thức ăn.',
            'example': 'Cô ấy nấu ăn rất ngon.'
          }
        ]
      },
      'word_to': {
        'word': 'cook',
        'pronunciation': '/kʊk/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Prepare food by heating it.',
            'example': 'She cooks very well.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Giặt',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Làm sạch quần áo bằng nước.',
            'example': 'Anh ấy giặt quần áo vào cuối tuần.'
          }
        ]
      },
      'word_to': {
        'word': 'wash',
        'pronunciation': '/wɒʃ/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Clean with water and, typically, soap.',
            'example': 'He washes clothes on weekends.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Sửa chữa',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Khắc phục sự cố.',
            'example': 'Anh ấy sửa chữa xe đạp.'
          }
        ]
      },
      'word_to': {
        'word': 'repair',
        'pronunciation': '/rɪˈpɛər/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Fix or mend something.',
            'example': 'He repairs the bicycle.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Xây dựng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Tạo dựng công trình.',
            'example': 'Họ xây dựng một ngôi nhà mới.'
          }
        ]
      },
      'word_to': {
        'word': 'build',
        'pronunciation': '/bɪld/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Construct by putting parts together.',
            'example': 'They build a new house.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Học hỏi',
        'pronunciation': null,
        'details': [
          {
            'type': 'Verb',
            'description': 'Tiếp thu kiến thức.',
            'example': 'Cô ấy học hỏi rất nhanh.'
          }
        ]
      },
      'word_to': {
        'word': 'learn',
        'pronunciation': '/lɜːrn/',
        'details': [
          {
            'type': 'Verb',
            'description': 'Gain or acquire knowledge.',
            'example': 'She learns very quickly.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Giáo dục',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Quá trình giảng dạy và học tập.',
            'example': 'Giáo dục là nền tảng của xã hội.'
          }
        ]
      },
      'word_to': {
        'word': 'education',
        'pronunciation': '/ˌɛdʒʊˈkeɪʃən/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The process of receiving or giving systematic instruction.',
            'example': 'Education is the foundation of society.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Khoa học',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngành nghiên cứu tự nhiên và vật lý.',
            'example': 'Khoa học giúp hiểu biết về thế giới.'
          }
        ]
      },
      'word_to': {
        'word': 'science',
        'pronunciation': '/ˈsaɪəns/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The study of the natural and physical world.',
            'example': 'Science helps us understand the world.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Toán học',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngành nghiên cứu về số và hình học.',
            'example': 'Toán học là một môn học quan trọng.'
          }
        ]
      },
      'word_to': {
        'word': 'math',
        'pronunciation': '/mæθ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The study of numbers, shapes, and patterns.',
            'example': 'Math is an important subject.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Lịch sử',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nghiên cứu về quá khứ.',
            'example': 'Lịch sử giúp ta hiểu về nguồn gốc.'
          }
        ]
      },
      'word_to': {
        'word': 'history',
        'pronunciation': '/ˈhɪstəri/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The study of past events.',
            'example': 'History helps us understand our origins.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Địa lý',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nghiên cứu về đất đai và môi trường.',
            'example': 'Địa lý giúp hiểu về trái đất.'
          }
        ]
      },
      'word_to': {
        'word': 'geography',
        'pronunciation': '/dʒiˈɒɡrəfi/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The study of the earth and its features.',
            'example': 'Geography helps us understand the earth.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Văn học',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nghiên cứu về văn bản và tác phẩm văn học.',
            'example': 'Văn học mở rộng tầm nhìn.'
          }
        ]
      },
      'word_to': {
        'word': 'literature',
        'pronunciation': '/ˈlɪtərətʃər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The study of written works.',
            'example': 'Literature broadens our perspective.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Ngôn ngữ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Hệ thống giao tiếp bằng lời nói hoặc viết.',
            'example': 'Ngôn ngữ giúp con người giao tiếp.'
          }
        ]
      },
      'word_to': {
        'word': 'language',
        'pronunciation': '/ˈlæŋɡwɪdʒ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A system of communication.',
            'example': 'Language helps people communicate.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tiếng Anh',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngôn ngữ chính thức của nhiều quốc gia.',
            'example': 'Tiếng Anh là ngôn ngữ quốc tế.'
          }
        ]
      },
      'word_to': {
        'word': 'English',
        'pronunciation': '/ˈɪŋɡlɪʃ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The official language of many countries.',
            'example': 'English is an international language.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tiếng Việt',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngôn ngữ chính thức của Việt Nam.',
            'example': 'Tiếng Việt là ngôn ngữ mẹ đẻ của tôi.'
          }
        ]
      },
      'word_to': {
        'word': 'Vietnamese',
        'pronunciation': '/ˌviːɛtnəˈmiːz/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The official language of Vietnam.',
            'example': 'Vietnamese is my native language.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tiếng Pháp',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngôn ngữ chính thức của Pháp.',
            'example': 'Tiếng Pháp rất lãng mạn.'
          }
        ]
      },
      'word_to': {
        'word': 'French',
        'pronunciation': '/frɛntʃ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The official language of France.',
            'example': 'French is very romantic.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tiếng Trung',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngôn ngữ chính thức của Trung Quốc.',
            'example': 'Tiếng Trung rất phổ biến.'
          }
        ]
      },
      'word_to': {
        'word': 'Chinese',
        'pronunciation': '/tʃaɪˈniːz/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The official language of China.',
            'example': 'Chinese is very popular.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tiếng Nhật',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngôn ngữ chính thức của Nhật Bản.',
            'example': 'Tiếng Nhật rất thú vị.'
          }
        ]
      },
      'word_to': {
        'word': 'Japanese',
        'pronunciation': '/ˌdʒæpəˈniːz/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The official language of Japan.',
            'example': 'Japanese is very interesting.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Màu sắc',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Các sắc thái khác nhau mà mắt có thể nhìn thấy.',
            'example': 'Màu sắc của bức tranh rất rực rỡ.'
          }
        ]
      },
      'word_to': {
        'word': 'color',
        'pronunciation': '/ˈkʌlər/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The property possessed by an object of producing different sensations on the eye.',
            'example': 'The colors of the painting are very vibrant.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Đỏ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Màu của máu hoặc quả táo.',
            'example': 'Chiếc xe có màu đỏ.'
          }
        ]
      },
      'word_to': {
        'word': 'red',
        'pronunciation': '/rɛd/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The color of blood or ripe strawberries.',
            'example': 'The car is red.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Xanh',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Màu của bầu trời hoặc biển.',
            'example': 'Áo của cô ấy có màu xanh.'
          }
        ]
      },
      'word_to': {
        'word': 'blue',
        'pronunciation': '/bluː/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The color of the sky or sea.',
            'example': 'Her shirt is blue.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Vàng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Màu của mặt trời hoặc hoa hướng dương.',
            'example': 'Cô ấy mặc váy màu vàng.'
          }
        ]
      },
      'word_to': {
        'word': 'yellow',
        'pronunciation': '/ˈjɛloʊ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The color of the sun or ripe lemons.',
            'example': 'She wears a yellow dress.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Đen',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Màu tối nhất, không có ánh sáng.',
            'example': 'Con mèo có bộ lông đen.'
          }
        ]
      },
      'word_to': {
        'word': 'black',
        'pronunciation': '/blæk/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The darkest color, resulting from the absence of light.',
            'example': 'The cat has black fur.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Trắng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Màu của tuyết hoặc sữa.',
            'example': 'Tường nhà được sơn màu trắng.'
          }
        ]
      },
      'word_to': {
        'word': 'white',
        'pronunciation': '/waɪt/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The color of milk or fresh snow.',
            'example': 'The walls are painted white.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Nắng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ánh sáng và nhiệt từ mặt trời.',
            'example': 'Hôm nay trời có nắng.'
          }
        ]
      },
      'word_to': {
        'word': 'sun',
        'pronunciation': '/sʌn/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The light and heat that come from the sun.',
            'example': 'It is sunny today.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Mưa',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nước rơi từ mây.',
            'example': 'Mưa làm ướt đường.'
          }
        ]
      },
      'word_to': {
        'word': 'rain',
        'pronunciation': '/reɪn/',
        'details': [
          {
            'type': 'Noun',
            'description': 'Water that falls from clouds.',
            'example': 'The rain wets the road.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Gió',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Không khí chuyển động.',
            'example': 'Gió thổi mạnh qua cánh đồng.'
          }
        ]
      },
      'word_to': {
        'word': 'wind',
        'pronunciation': '/wɪnd/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The natural movement of air.',
            'example': 'The wind blows strongly across the field.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tuyết',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Nước đóng băng rơi từ trời.',
            'example': 'Tuyết phủ trắng ngọn núi.'
          }
        ]
      },
      'word_to': {
        'word': 'snow',
        'pronunciation': '/snoʊ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'Frozen water falling from the sky.',
            'example': 'The snow covers the mountain in white.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Thời tiết',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Điều kiện khí hậu tại một thời điểm.',
            'example': 'Thời tiết hôm nay rất đẹp.'
          }
        ]
      },
      'word_to': {
        'word': 'weather',
        'pronunciation': '/ˈwɛðər/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The state of the atmosphere at a particular place and time.',
            'example': 'The weather is nice today.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Mùa xuân',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Mùa sau mùa đông, khi cây cối bắt đầu mọc lại.',
            'example': 'Hoa nở rộ vào mùa xuân.'
          }
        ]
      },
      'word_to': {
        'word': 'spring',
        'pronunciation': '/sprɪŋ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The season after winter when plants begin to grow.',
            'example': 'Flowers bloom in spring.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Mùa hè',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Mùa nóng nhất trong năm.',
            'example': 'Chúng tôi đi biển vào mùa hè.'
          }
        ]
      },
      'word_to': {
        'word': 'summer',
        'pronunciation': '/ˈsʌmər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The hottest season of the year.',
            'example': 'We go to the beach in summer.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Mùa thu',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Mùa khi lá cây chuyển màu và rụng.',
            'example': 'Lá vàng rơi vào mùa thu.'
          }
        ]
      },
      'word_to': {
        'word': 'autumn',
        'pronunciation': '/ˈɔːtəm/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The season when leaves change color and fall.',
            'example': 'Leaves fall in autumn.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Mùa đông',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Mùa lạnh nhất trong năm.',
            'example': 'Tuyết rơi vào mùa đông.'
          }
        ]
      },
      'word_to': {
        'word': 'winter',
        'pronunciation': '/ˈwɪntər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The coldest season of the year.',
            'example': 'Snow falls in winter.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Ngày',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thời gian từ sáng đến tối.',
            'example': 'Chúng tôi làm việc suốt cả ngày.'
          }
        ]
      },
      'word_to': {
        'word': 'day',
        'pronunciation': '/deɪ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The time from sunrise to sunset.',
            'example': 'We work all day.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Đêm',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thời gian từ tối đến sáng.',
            'example': 'Trời rất tối vào ban đêm.'
          }
        ]
      },
      'word_to': {
        'word': 'night',
        'pronunciation': '/naɪt/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The time from sunset to sunrise.',
            'example': 'It is very dark at night.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Sáng',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thời gian từ lúc mặt trời mọc đến trưa.',
            'example': 'Chúng tôi ăn sáng vào buổi sáng.'
          }
        ]
      },
      'word_to': {
        'word': 'morning',
        'pronunciation': '/ˈmɔːrnɪŋ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The time from sunrise to noon.',
            'example': 'We have breakfast in the morning.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Chiều',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thời gian từ trưa đến tối.',
            'example': 'Chúng tôi đi dạo vào buổi chiều.'
          }
        ]
      },
      'word_to': {
        'word': 'afternoon',
        'pronunciation': '/ˌæftərˈnuːn/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The time from noon to evening.',
            'example': 'We take a walk in the afternoon.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Tối',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Thời gian từ lúc mặt trời lặn đến đêm.',
            'example': 'Chúng tôi ăn tối vào buổi tối.'
          }
        ]
      },
      'word_to': {
        'word': 'evening',
        'pronunciation': '/ˈiːvnɪŋ/',
        'details': [
          {
            'type': 'Noun',
            'description': 'The time from sunset to night.',
            'example': 'We have dinner in the evening.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Giờ',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Đơn vị thời gian bằng 60 phút.',
            'example': 'Một ngày có 24 giờ.'
          }
        ]
      },
      'word_to': {
        'word': 'hour',
        'pronunciation': '/ˈaʊər/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A unit of time equal to 60 minutes.',
            'example': 'There are 24 hours in a day.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Phút',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Đơn vị thời gian bằng 60 giây.',
            'example': 'Một giờ có 60 phút.'
          }
        ]
      },
      'word_to': {
        'word': 'minute',
        'pronunciation': '/ˈmɪnɪt/',
        'details': [
          {
            'type': 'Noun',
            'description': 'A unit of time equal to 60 seconds.',
            'example': 'There are 60 minutes in an hour.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Giây',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Đơn vị thời gian ngắn nhất, bằng 1/60 phút.',
            'example': 'Một phút có 60 giây.'
          }
        ]
      },
      'word_to': {
        'word': 'second',
        'pronunciation': '/ˈsɛkənd/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The base unit of time in the International System of Units.',
            'example': 'There are 60 seconds in a minute.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Ngày sinh',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngày mà một người được sinh ra.',
            'example': 'Chúng tôi tổ chức sinh nhật mỗi năm.'
          }
        ]
      },
      'word_to': {
        'word': 'birthday',
        'pronunciation': '/ˈbɜːrθdeɪ/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The anniversary of the day on which a person was born.',
            'example': 'We celebrate birthdays every year.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    },
    {
      'lang_from': 'vi_VI',
      'lang_to': 'en_US',
      'word_from': {
        'word': 'Kỷ niệm',
        'pronunciation': null,
        'details': [
          {
            'type': 'Noun',
            'description': 'Ngày kỷ niệm một sự kiện đặc biệt.',
            'example': 'Họ kỷ niệm ngày cưới hàng năm.'
          }
        ]
      },
      'word_to': {
        'word': 'anniversary',
        'pronunciation': '/ˌænɪˈvɜːrsəri/',
        'details': [
          {
            'type': 'Noun',
            'description':
                'The date on which an event took place in a previous year.',
            'example': 'They celebrate their wedding anniversary annually.'
          }
        ]
      },
      'user_definition': '',
      'metadata': {'user_id': null, 'timestamp': null}
    }
  ];
}
