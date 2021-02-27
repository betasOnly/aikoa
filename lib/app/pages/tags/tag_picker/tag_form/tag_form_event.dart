part of 'tag_form_bloc.dart';

@freezed
abstract class TagFormEvent with _$TagFormEvent {
  const factory TagFormEvent.initialized(Option<Tag> initialTagOption) =
      _Initialized;
  const factory TagFormEvent.nameChanged(String tagStr) = _NameChanged;
  const factory TagFormEvent.deleted() = _Deleted;
  const factory TagFormEvent.saved() = _Saved;
}
