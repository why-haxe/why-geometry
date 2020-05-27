package tink.s2d;

@:observable
@:access(tink.s2d)
@:forward(concat, copy, filter, indexOf, iterator, join, lastIndexOf, map, slice, toString)
abstract LineString(Array<Point>) {
	public var length(get, never):Int;

	inline function get_length()
		return this.length;

	public inline function new(v)
		this = v;

	public function toWkt():String
		return length == 0 ? 'LINESTRING EMPTY' : 'LINESTRING(${toWktParams()})';

	inline function toWktParams():String
		return this.map(point -> point.toWktParams()).join(',');
}
