package kadabra.utils;

using StringTools;

class FormatUtils {
	static public function checkSup(str:String):String {
		str = str.replace("<sup>", "<font face = 'GG Superscript Sans'>");
		str = str.replace("</sup>", "</font>");
		return str;
		// TODO Subscript
	}
}
