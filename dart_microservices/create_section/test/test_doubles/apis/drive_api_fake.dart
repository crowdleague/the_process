import 'package:googleapis/drive/v3.dart';
import 'package:test/fake.dart';

class DriveApiFake extends Fake implements DriveApi {
  final File? _createReturnFile;
  final File? _updateReturnFile;
  DriveApiFake({File? onCreate, File? onUpdate})
      : _createReturnFile = onCreate,
        _updateReturnFile = onUpdate;
  @override
  FilesResourceApi get files =>
      FilesResourceApiFake(_createReturnFile, _updateReturnFile);
}

class FilesResourceApiFake extends Fake implements FilesResourceApi {
  final File? _createReturnFile;
  final File? _updateReturnFile;
  FilesResourceApiFake(this._createReturnFile, this._updateReturnFile);

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
    return Future.value(_updateReturnFile ?? File());
  }
}
