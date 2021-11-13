using System.Reflection;

namespace JSON_Beef.Util
{
	public static class AttributeChecker
	{
		public static bool ShouldIgnore(FieldInfo field)
		{
			switch (field.GetCustomAttribute<Serialized>()) {
			case .Err(let err):
				return true;
			default:
			}

			return (FieldHelper.HasFlag(field, .PrivateScope) || FieldHelper.HasFlag(field, .Private) || FieldHelper.HasFlag(field, .Static));
		}
	}
}
