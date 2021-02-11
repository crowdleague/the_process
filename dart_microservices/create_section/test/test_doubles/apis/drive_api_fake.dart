import 'package:googleapis/drive/v3.dart';
import 'package:test/fake.dart';

class DriveApiFake extends Fake implements DriveApi {
  final File? _createReturnFile;
  final File? _updateReturnFile;
  final Exception? _createException;
  final Exception? _updateException;

  DriveApiFake(
      {File? onCreate,
      File? onUpdate,
      Exception? createException,
      Exception? updateException})
      : _createReturnFile = onCreate,
        _updateReturnFile = onUpdate,
        _createException = createException,
        _updateException = updateException;

  @override
  FilesResourceApi get files => FilesResourceApiFake(
      _createReturnFile, _updateReturnFile, _createException, _updateException);
}

class FilesResourceApiFake extends Fake implements FilesResourceApi {
  final File? _createReturnFile;
  final File? _updateReturnFile;
  final Exception? _createException;
  final Exception? _updateException;

  FilesResourceApiFake(this._createReturnFile, this._updateReturnFile,
      this._createException, this._updateException);

  @override
  Future<File> create(File request,
      {bool? enforceSingleParent,
      bool? ignoreDefaultVisibility,
      String? includePermissionsForView,
      bool? keepRevisionForever,
      String? ocrLanguage,
      bool? supportsAllDrives,
      bool? supportsTeamDrives,
      bool? useContentAsIndexableText,
      String? $fields,
      UploadOptions? uploadOptions = UploadOptions.Default,
      Media? uploadMedia}) {
    if (_createException != null) {
      throw _createException!;
    }
    return Future.value(_createReturnFile ?? File());
  }

  @override
  Future<File> update(File request, String fileId,
      {String? addParents,
      bool? enforceSingleParent,
      String? includePermissionsForView,
      bool? keepRevisionForever,
      String? ocrLanguage,
      String? removeParents,
      bool? supportsAllDrives,
      bool? supportsTeamDrives,
      bool? useContentAsIndexableText,
      String? $fields,
      UploadOptions? uploadOptions = UploadOptions.Default,
      Media? uploadMedia}) {
    if (_updateException != null) {
      throw _updateException!;
    }
    return Future.value(_updateReturnFile ?? File());
  }
}
