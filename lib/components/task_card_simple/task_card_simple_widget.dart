import '/backend/backend.dart';
import '/components/dropdown_edit_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'task_card_simple_model.dart';
export 'task_card_simple_model.dart';

class TaskCardSimpleWidget extends StatefulWidget {
  const TaskCardSimpleWidget({
    super.key,
    required this.taskRef,
  });

  final TasksRecord? taskRef;

  @override
  State<TaskCardSimpleWidget> createState() => _TaskCardSimpleWidgetState();
}

class _TaskCardSimpleWidgetState extends State<TaskCardSimpleWidget> {
  late TaskCardSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskCardSimpleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      constraints: const BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.taskRef?.name,
                              'Task Name',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 12.0,
                          borderWidth: 2.0,
                          buttonSize: 36.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.more_vert_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            await showAlignedDialog(
                              barrierColor:
                                  FlutterFlowTheme.of(context).accent4,
                              context: context,
                              isGlobal: false,
                              avoidOverflow: true,
                              targetAnchor: const AlignmentDirectional(-1.0, 1.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: const AlignmentDirectional(-1.0, -1.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: DropdownEditWidget(
                                    taskRef: widget.taskRef!,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 12.0,
                        borderWidth: 2.0,
                        buttonSize: 36.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.chevron_right_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'task_Details',
                            queryParameters: {
                              'taskRef': serializeParam(
                                widget.taskRef,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'taskRef': widget.taskRef,
                            },
                          );
                        },
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.taskRef?.description,
                        'No Description...',
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (widget.taskRef?.status != 'Completed')
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Due on: ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          dateTimeFormat("MMMEd",
                                              widget.taskRef?.dueDate),
                                          'In Progress',
                                        ),
                                        style: const TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              if (widget.taskRef?.status == 'Completed')
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Completed on: ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          dateTimeFormat("MMMEd",
                                              widget.taskRef?.completedOn),
                                          'In Progress',
                                        ),
                                        style: const TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                        if (widget.taskRef?.imageUrl != null &&
                            widget.taskRef?.imageUrl != '')
                          Icon(
                            Icons.image_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.taskRef?.category,
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 2.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (widget.taskRef?.status == 'In Progress') {
                                return FlutterFlowTheme.of(context).accent1;
                              } else if (widget.taskRef?.status ==
                                  'Completed') {
                                return FlutterFlowTheme.of(context).accent2;
                              } else {
                                return FlutterFlowTheme.of(context).accent4;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: () {
                                if (widget.taskRef?.status == 'In Progress') {
                                  return FlutterFlowTheme.of(context).primary;
                                } else if (widget.taskRef?.status ==
                                    'Completed') {
                                  return FlutterFlowTheme.of(context).secondary;
                                } else {
                                  return FlutterFlowTheme.of(context).alternate;
                                }
                              }(),
                              width: 2.0,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.taskRef?.status,
                                  'In Progress',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: () {
                                        if (widget.taskRef?.status ==
                                            'In Progress') {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        } else if (widget.taskRef?.status ==
                                            'Completed') {
                                          return FlutterFlowTheme.of(context)
                                              .secondary;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryText;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
