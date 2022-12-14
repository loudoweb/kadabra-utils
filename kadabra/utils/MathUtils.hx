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

	inline static public function normalize(pt1:Point):Point {
		var l = pt1.length;
		return new Point(pt1.x / l, pt1.y / l);
	}

	inline static public function getPointAtDistance(pt1:Point, pt2:Point, radius:Float, ?pout:Point):Point {
		var vector:Point = new Point(pt2.x - pt1.x, pt2.y - pt1.y);
		vector = normalize(vector);
		if (pout == null)
			return new Point(pt1.x + radius * vector.x, pt1.y + radius * vector.y);
		else{
			pout.setTo(pt1.x + radius * vector.x, pt1.y + radius * vector.y);
			return pout;
		}
	}
}
