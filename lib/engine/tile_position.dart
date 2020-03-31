import 'package:batufo/dart_types/dart_types.dart';
import 'package:batufo/engine/geometry/dart_geometry.dart' show Offset;
import 'package:batufo/engine/world_position.dart';

@immutable
class TilePosition {
  final int col;
  final int row;
  final double relX;
  final double relY;

  const TilePosition(this.col, this.row, this.relX, this.relY);

  bool isSameTileAs(TilePosition other) =>
      other.col == this.col && other.row == this.row;

  WorldPosition toWorldPosition() => WorldPosition.fromTilePosition(this);
  Offset toWorldOffset() => toWorldPosition().toOffset();

  TilePosition copyWith({
    int col,
    int row,
    double relX,
    double relY,
  }) {
    return TilePosition(
      col ?? this.col,
      row ?? this.row,
      relX ?? this.relX,
      relY ?? this.relY,
    );
  }

  @override
  String toString() {
    return '''TilePosition {
      col: $col + $relX
      row: $row + $relY
    }''';
  }
}