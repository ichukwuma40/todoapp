import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_view_empty_model.dart';
export 'list_view_empty_model.dart';

class ListViewEmptyWidget extends StatefulWidget {
  const ListViewEmptyWidget({
    super.key,
    this.emptyState,
  });

  final bool? emptyState;

  @override
  State<ListViewEmptyWidget> createState() => _ListViewEmptyWidgetState();
}

class _ListViewEmptyWidgetState extends State<ListViewEmptyWidget> {
  late ListViewEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListViewEmptyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (!widget.emptyState!)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                  child: Text(
                    'No Tasks',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Flow Circular',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              if (widget.emptyState ?? true)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                    child: Text(
                      'No Tasks',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
