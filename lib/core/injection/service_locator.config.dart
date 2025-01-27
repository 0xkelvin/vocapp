// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:voca_notes/core/services/router/router_service.dart' as _i375;
import 'package:voca_notes/features/dictionary/data/data_sources/dictionary_data_source.dart'
    as _i414;
import 'package:voca_notes/features/dictionary/data/respositories/dictionary_repository_impl.dart'
    as _i964;
import 'package:voca_notes/features/dictionary/domain/repositories/dictionary_repository.dart'
    as _i549;
import 'package:voca_notes/features/dictionary/domain/use_cases/get_daily_word_list.dart'
    as _i46;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i375.RouterService>(() => _i375.RouterService());
    gh.lazySingleton<_i414.DictionaryDataSource>(
        () => const _i414.DictionaryDataSourceImpl());
    gh.lazySingleton<_i549.DictionaryRepository>(
        () => const _i964.DictionaryRepositoryImpl());
    gh.lazySingleton<_i46.GetDailyWordList>(
        () => _i46.GetDailyWordList(gh<_i549.DictionaryRepository>()));
    return this;
  }
}
