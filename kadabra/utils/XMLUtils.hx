package kadabra.utils;
import haxe.xml.Access;

/**
 * Utils for xml/access
 * @author Ludovic Bas - www.lugludum.com
 */
class XMLUtils 
{

	/**
	 * Find xml attribute or use default value
	 * @param	xml
	 * @param	name
	 * @param	defaultValue 0.0
	 * @return
	 */
	inline public static function getFloat(xml:Access, name:String, defaultValue:Float = 0.0):Float
	{
		return xml.has.resolve(name) ? Std.parseFloat(xml.att.resolve(name)) : defaultValue;
	}
	/**
	 * Find xml attribute or use default value
	 * @param	xml
	 * @param	name
	 * @param	defaultValue 0
	 * @return
	 */
	inline public static function getInt(xml:Access, name:String, defaultValue:Int = 0):Int
	{
		return xml.has.resolve(name) ? Std.parseInt(xml.att.resolve(name)) : defaultValue;
	}
	/**
	 * Find xml attribute or use default value
	 * @param	xml
	 * @param	name
	 * @param	defaultValue true
	 * @return
	 */
	inline public static function getBool(xml:Access, name:String, defaultValue:Bool = true):Bool
	{
		return xml.has.resolve(name) ? xml.att.resolve(name) == "true" : defaultValue;
	}
	/**
	 * Find xml attribute or use default value
	 * @param	xml
	 * @param	name
	 * @param	defaultValue empty string
	 * @return
	 */
	inline public static function getString(xml:Access, name:String, defaultValue:String = ""):String
	{
		return xml.has.resolve(name) ? xml.att.resolve(name) : defaultValue;
	}
	
	/**
	*
	* Get first child
	*
	*/
	inline public static function getFirstChild(xml:Access):Access
	{
		var child = null;
		for (el in xml.elements)
		{
			child = el;
			break;
		}
		return child;
	}
	
}