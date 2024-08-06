import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'task_card_widget.dart' show TaskCardWidget;
import 'package:flutter/material.dart';

class TaskCardModel extends FlutterFlowModel<TaskCardWidget> {
  /// Query cache managers for this widget.

  final _assignedUserManager = StreamRequestManager<UsersRecord>();
  Stream<UsersRecord> assignedUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<UsersRecord> Function() requestFn,
  }) =>
      _assignedUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAssignedUserCache() => _assignedUserManager.clear();
  void clearAssignedUserCacheKey(String? uniqueKey) =>
      _assignedUserManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearAssignedUserCache();
  }
}
