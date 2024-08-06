import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/modal_task_create_edit/modal_task_create_edit_widget.dart';
import '/components/task_card_simple/task_card_simple_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main_drag_live_stream_model.dart';
export 'main_drag_live_stream_model.dart';

class MainDragLiveStreamWidget extends StatefulWidget {
  const MainDragLiveStreamWidget({super.key});

  @override
  State<MainDragLiveStreamWidget> createState() =>
      _MainDragLiveStreamWidgetState();
}

class _MainDragLiveStreamWidgetState extends State<MainDragLiveStreamWidget> {
  late MainDragLiveStreamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainDragLiveStreamModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: FFAppConstants.maxWidthLarge.toDouble(),
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Tasks',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    'Your upcoming tasks',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  if (MediaQuery.sizeOf(context).width >=
                                      1270.0) {
                                    await showDialog(
                                      barrierColor:
                                          FlutterFlowTheme.of(context).accent4,
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () =>
                                                FocusScope.of(dialogContext)
                                                    .unfocus(),
                                            child: const ModalTaskCreateEditWidget(),
                                          ),
                                        );
                                      },
                                    );
                                  } else {
                                    context.pushNamed(
                                      'task_CreateEdit',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: 'Create Task',
                                options: FFButtonOptions(
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  hoverBorderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverElevation: 0.0,
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Builder(
                              builder: (context) => Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).accent2,
                                  borderRadius: 12.0,
                                  borderWidth: 2.0,
                                  buttonSize: 48.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  hoverColor:
                                      FlutterFlowTheme.of(context).accent2,
                                  icon: Icon(
                                    Icons.add_task_rounded,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 32.0,
                                  ),
                                  onPressed: () async {
                                    if (MediaQuery.sizeOf(context).width >=
                                        1270.0) {
                                      await showDialog(
                                        barrierColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child:
                                                  const ModalTaskCreateEditWidget(),
                                            ),
                                          );
                                        },
                                      );
                                    } else {
                                      context.pushNamed(
                                        'task_CreateEdit',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 300),
                                          ),
                                        },
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: StreamBuilder<List<TasksRecord>>(
                              stream: queryTasksRecord(
                                queryBuilder: (tasksRecord) => tasksRecord
                                    .where(
                                      'owner',
                                      isEqualTo: currentUserReference,
                                    )
                                    .where(
                                      'status',
                                      isEqualTo: 'In Progress',
                                    )
                                    .orderBy('createdTime', descending: true),
                                limit: 50,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitThreeBounce(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<TasksRecord>
                                    inProgressQueryTasksRecordList =
                                    snapshot.data!;

                                return Container(
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'In Progress',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      DragTarget<TasksRecord>(
                                        onAcceptWithDetails: (details) async {
                                          if (details.data.status ==
                                              'Completed') {
                                            await details.data.reference
                                                .update(createTasksRecordData(
                                              status: 'In Progress',
                                            ));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'You have moved a task to in progress.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'This is already in progress.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            );
                                          }

                                          _model.inProgressActive = false;
                                          setState(() {});

                                          setState(() {});
                                        },
                                        onWillAcceptWithDetails: (details) {
                                          (() async {
                                            _model.inProgressActive = true;
                                            setState(() {});

                                            setState(() {});
                                          })();
                                          return true;
                                        },
                                        onLeave: (data) async {
                                          _model.inProgressActive = false;
                                          setState(() {});

                                          setState(() {});
                                        },
                                        builder: (context, _, __) {
                                          return AnimatedContainer(
                                            duration:
                                                const Duration(milliseconds: 100),
                                            curve: Curves.easeInOut,
                                            width: double.infinity,
                                            height: 700.0,
                                            decoration: BoxDecoration(
                                              color: _model.inProgressActive
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent2
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: _model.inProgressActive
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final pendingTasks =
                                                      inProgressQueryTasksRecordList
                                                          .toList();

                                                  return ListView.separated(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      12.0,
                                                      0,
                                                      16.0,
                                                    ),
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        pendingTasks.length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 12.0),
                                                    itemBuilder: (context,
                                                        pendingTasksIndex) {
                                                      final pendingTasksItem =
                                                          pendingTasks[
                                                              pendingTasksIndex];
                                                      return Draggable<
                                                          TasksRecord>(
                                                        data: pendingTasksItem,
                                                        feedback: Material(
                                                          type: MaterialType
                                                              .transparency,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .taskCardSimpleModels1
                                                                  .getModel(
                                                                pendingTasksItem
                                                                    .reference
                                                                    .id,
                                                                pendingTasksIndex,
                                                              ),
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  TaskCardSimpleWidget(
                                                                key: Key(
                                                                  'Keyvim_${pendingTasksItem.reference.id}',
                                                                ),
                                                                taskRef:
                                                                    pendingTasksItem,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .taskCardSimpleModels1
                                                                .getModel(
                                                              pendingTasksItem
                                                                  .reference.id,
                                                              pendingTasksIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                TaskCardSimpleWidget(
                                                              key: Key(
                                                                'Keyvim_${pendingTasksItem.reference.id}',
                                                              ),
                                                              taskRef:
                                                                  pendingTasksItem,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: StreamBuilder<List<TasksRecord>>(
                              stream: queryTasksRecord(
                                queryBuilder: (tasksRecord) => tasksRecord
                                    .where(
                                      'owner',
                                      isEqualTo: currentUserReference,
                                    )
                                    .where(
                                      'status',
                                      isEqualTo: 'Completed',
                                    )
                                    .orderBy('completedOn', descending: true),
                                limit: 50,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitThreeBounce(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<TasksRecord>
                                    completedQueryTasksRecordList =
                                    snapshot.data!;

                                return Container(
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Completed',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      DragTarget<TasksRecord>(
                                        onAcceptWithDetails: (details) async {
                                          if (details.data.status ==
                                              'In Progress') {
                                            await details.data.reference
                                                .update(createTasksRecordData(
                                              status: 'Completed',
                                              completedOn: getCurrentTimestamp,
                                            ));
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'You have completed a task!',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'This is already completed!',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            );
                                          }

                                          // setFalse
                                          _model.completedActive = false;
                                          setState(() {});

                                          setState(() {});
                                        },
                                        onWillAcceptWithDetails: (details) {
                                          (() async {
                                            // setTrue
                                            _model.completedActive = true;
                                            setState(() {});

                                            setState(() {});
                                          })();
                                          return true;
                                        },
                                        onLeave: (data) async {
                                          // setFalse
                                          _model.completedActive = false;
                                          setState(() {});

                                          setState(() {});
                                        },
                                        builder: (context, _, __) {
                                          return AnimatedContainer(
                                            duration:
                                                const Duration(milliseconds: 100),
                                            curve: Curves.easeInOut,
                                            width: double.infinity,
                                            height: 700.0,
                                            decoration: BoxDecoration(
                                              color: _model.completedActive
                                                  ? FlutterFlowTheme.of(context)
                                                      .accent1
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: _model.completedActive
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final completedItems =
                                                      completedQueryTasksRecordList
                                                          .toList();

                                                  return ListView.separated(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      12.0,
                                                      0,
                                                      16.0,
                                                    ),
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        completedItems.length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 12.0),
                                                    itemBuilder: (context,
                                                        completedItemsIndex) {
                                                      final completedItemsItem =
                                                          completedItems[
                                                              completedItemsIndex];
                                                      return Draggable<
                                                          TasksRecord>(
                                                        data:
                                                            completedItemsItem,
                                                        feedback: Material(
                                                          type: MaterialType
                                                              .transparency,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .taskCardSimpleModels2
                                                                  .getModel(
                                                                completedItemsItem
                                                                    .reference
                                                                    .id,
                                                                completedItemsIndex,
                                                              ),
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  TaskCardSimpleWidget(
                                                                key: Key(
                                                                  'Key37s_${completedItemsItem.reference.id}',
                                                                ),
                                                                taskRef:
                                                                    completedItemsItem,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .taskCardSimpleModels2
                                                                .getModel(
                                                              completedItemsItem
                                                                  .reference.id,
                                                              completedItemsIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                TaskCardSimpleWidget(
                                                              key: Key(
                                                                'Key37s_${completedItemsItem.reference.id}',
                                                              ),
                                                              taskRef:
                                                                  completedItemsItem,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
