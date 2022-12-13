package kadabra.utils;

import openfl.geom.Point;

/**
 * ...
 * @author Ludovic Bas - www.lugludum.com
 */
class MathUtils {
	inline static public function distance(x1:Float, y1:Float, x2:Float, y2:Float):Float {
		var dx:Float = x1 - x2;
		var dy:Float = y1 - y2;
		return Math.sqrt(dx * dx + dy * dy);
	}

	inline static public function distancePoint(pt1:Point, pt2:Point):Float {
		var dx:Float = pt1.x - pt2.x;
		var dy:Float = pt1.y - pt2.y;
		return Math.sqrt(dx * dx + dy * dy);
	}
}
