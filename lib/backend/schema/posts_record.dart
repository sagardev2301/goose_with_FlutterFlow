import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "post_photos_url" field.
  List<String>? _postPhotosUrl;
  List<String> get postPhotosUrl => _postPhotosUrl ?? const [];
  bool hasPostPhotosUrl() => _postPhotosUrl != null;

  void _initializeFields() {
    _postTitle = snapshotData['post_title'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _price = castToType<double>(snapshotData['price']);
    _postPhotosUrl = getDataList(snapshotData['post_photos_url']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPostsRecordData({
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_title': postTitle,
      'post_description': postDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}
