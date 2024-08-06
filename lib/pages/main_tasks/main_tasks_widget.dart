import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/modal_task_create_edit/modal_task_create_edit_widget.dart';
import '/components/task_card/task_card_widget.dart';
import '/empty_list/empty_state/empty_state_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main_tasks_model.dart';
export 'main_tasks_model.dart';

class MainTasksWidget extends StatefulWidget {
  const MainTasksWidget({super.key});

  @override
  State<MainTasksWidget> createState() => _MainTasksWidgetState();
}

class _MainTasksWidgetState extends State<MainTasksWidget>
    with TickerProviderStateMixin {
  late MainTasksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainTasksModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
                              builder: (context) => Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
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
                                  text: 'Create Task',
                                  options: FFButtonOptions(
                                    height: 44.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    hoverBorderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 2.0,
                                    ),
                                    hoverTextColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    hoverElevation: 0.0,
                                  ),
                                  showLoadingIndicator: false,
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
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(-1.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: false,
                                isScrollable: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent1,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 12.0,
                                elevation: 0.0,
                                labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 8.0),
                                padding: const EdgeInsets.all(4.0),
                                tabs: const [
                                  Tab(
                                    text: 'In Progress',
                                  ),
                                  Tab(
                                    text: 'Completed',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  StreamBuilder<List<TasksRecord>>(
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
                                          .orderBy('createdTime',
                                              descending: true),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<TasksRecord>
                                          containerBackendQueryTasksRecordList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Expanded(
                                                child: Builder(
                                                  builder: (context) {
                                                    final mobileTasks =
                                                        containerBackendQueryTasksRecordList
                                                            .toList();
                                                    if (mobileTasks.isEmpty) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.9,
                                                          height: 300.0,
                                                          child:
                                                              const EmptyStateWidget(),
                                                        ),
                                                      );
                                                    }

                                                    return ListView.separated(
                                                      padding:
                                                          const EdgeInsets.fromLTRB(
                                                        0,
                                                        0,
                                                        0,
                                                        44.0,
                                                      ),
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          mobileTasks.length,
                                                      separatorBuilder:
                                                          (_, __) => const SizedBox(
                                                              height: 12.0),
                                                      itemBuilder: (context,
                                                          mobileTasksIndex) {
                                                        final mobileTasksItem =
                                                            mobileTasks[
                                                                mobileTasksIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .taskCardModels1
                                                                .getModel(
                                                              mobileTasksItem
                                                                  .reference.id,
                                                              mobileTasksIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TaskCardWidget(
                                                              key: Key(
                                                                'Keyedo_${mobileTasksItem.reference.id}',
                                                              ),
                                                              taskRef:
                                                                  mobileTasksItem,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final tasks =
                                                          containerBackendQueryTasksRecordList
                                                              .toList();
                                                      if (tasks.isEmpty) {
                                                        return const Center(
                                                          child: SizedBox(
                                                            height: 300.0,
                                                            child:
                                                                EmptyStateWidget(),
                                                          ),
                                                        );
                                                      }

                                                      return GridView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 3,
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio: 1.5,
                                                        ),
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: tasks.length,
                                                        itemBuilder: (context,
                                                            tasksIndex) {
                                                          final tasksItem =
                                                              tasks[tasksIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .taskCardModels2
                                                                .getModel(
                                                              tasksItem
                                                                  .reference.id,
                                                              tasksIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TaskCardWidget(
                                                              key: Key(
                                                                'Keyupe_${tasksItem.reference.id}',
                                                              ),
                                                              taskRef:
                                                                  tasksItem,
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  StreamBuilder<List<TasksRecord>>(
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
                                          .orderBy('createdTime',
                                              descending: true),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<TasksRecord>
                                          containerBackendQueryTasksRecordList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Expanded(
                                                child: Builder(
                                                  builder: (context) {
                                                    final mobileTasks =
                                                        containerBackendQueryTasksRecordList
                                                            .toList();
                                                    if (mobileTasks.isEmpty) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.9,
                                                          height: 300.0,
                                                          child:
                                                              const EmptyStateWidget(),
                                                        ),
                                                      );
                                                    }

                                                    return ListView.separated(
                                                      padding:
                                                          const EdgeInsets.fromLTRB(
                                                        0,
                                                        0,
                                                        0,
                                                        44.0,
                                                      ),
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          mobileTasks.length,
                                                      separatorBuilder:
                                                          (_, __) => const SizedBox(
                                                              height: 12.0),
                                                      itemBuilder: (context,
                                                          mobileTasksIndex) {
                                                        final mobileTasksItem =
                                                            mobileTasks[
                                                                mobileTasksIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .taskCardModels3
                                                                .getModel(
                                                              mobileTasksItem
                                                                  .reference.id,
                                                              mobileTasksIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TaskCardWidget(
                                                              key: Key(
                                                                'Keyje0_${mobileTasksItem.reference.id}',
                                                              ),
                                                              taskRef:
                                                                  mobileTasksItem,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                            ))
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final tasks =
                                                          containerBackendQueryTasksRecordList
                                                              .toList();
                                                      if (tasks.isEmpty) {
                                                        return const Center(
                                                          child: SizedBox(
                                                            height: 300.0,
                                                            child:
                                                                EmptyStateWidget(),
                                                          ),
                                                        );
                                                      }

                                                      return GridView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 3,
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio: 1.5,
                                                        ),
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: tasks.length,
                                                        itemBuilder: (context,
                                                            tasksIndex) {
                                                          final tasksItem =
                                                              tasks[tasksIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .taskCardModels4
                                                                .getModel(
                                                              tasksItem
                                                                  .reference.id,
                                                              tasksIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TaskCardWidget(
                                                              key: Key(
                                                                'Keyshq_${tasksItem.reference.id}',
                                                              ),
                                                              taskRef:
                                                                  tasksItem,
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
