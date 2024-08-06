import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "task" field.
  DocumentReference? _task;
  DocumentReference? get task => _task;
  bool hasTask() => _task != null;

  // "lastEdited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _comment = snapshotData['comment'] as String?;
    _task = snapshotData['task'] as DocumentReference?;
    _lastEdited = snapshotData['lastEdited'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? user,
  DateTime? createdTime,
  String? comment,
  DocumentReference? task,
  DateTime? lastEdited,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'createdTime': createdTime,
      'comment': comment,
      'task': task,
      'lastEdited': lastEdited,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime &&
        e1?.comment == e2?.comment &&
        e1?.task == e2?.task &&
        e1?.lastEdited == e2?.lastEdited;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality()
      .hash([e?.user, e?.createdTime, e?.comment, e?.task, e?.lastEdited]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
