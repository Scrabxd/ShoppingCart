import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_item_fruit_model.dart';
export 'category_item_fruit_model.dart';

class CategoryItemFruitWidget extends StatefulWidget {
  const CategoryItemFruitWidget({Key? key}) : super(key: key);

  @override
  _CategoryItemFruitWidgetState createState() =>
      _CategoryItemFruitWidgetState();
}

class _CategoryItemFruitWidgetState extends State<CategoryItemFruitWidget> {
  late CategoryItemFruitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryItemFruitModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Opacity(
          opacity: FFAppState().categorySelected == 'Dried fruit' ? 1.0 : 0.7,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              FFAppState().update(() {
                FFAppState().categorySelected = 'Dried fruit';
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(
                'https://imgs.search.brave.com/WnPwkZxfPtIyHGfWxxjhYRV2ZTLdH1l7vUut4PqYhiU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTA3/OTcyMjUzOC9waG90/by9taXgtb2YtZHJp/ZWQtZnJ1aXRzLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1f/RHNQYS04SGpEZFhJ/QWw2dWotdTBjaE9O/b0pqWEhzLU8yaXIy/Y1ZDcHV3PQ',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          'Dried fruit',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FFAppState().categorySelected == 'Dried fruit'
                    ? Color(0xFF322920)
                    : Color(0xFF71665E),
                fontSize: 12.0,
              ),
        ),
      ].divide(SizedBox(height: 3.0)),
    );
  }
}
