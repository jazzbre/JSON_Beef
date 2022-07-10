using System;

namespace JSON_Beef
{
	[AttributeUsage(.Field | .Property | .StaticField, .ReflectAttribute, ReflectUser = .All)]
	public struct SerializedAttribute : Attribute
	{
	}
}
