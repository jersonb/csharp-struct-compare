.class public auto ansi sealed beforefieldinit Compare.CarplateClass
	extends [System.Runtime]System.Object
	implements class [System.Runtime]System.IEquatable`1<class Compare.CarplateClass>
{
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.interfaceimpl type class [System.Runtime]System.IEquatable`1<class Compare.CarplateClass>
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 02 00 00
	)

	// Fields
	.field private string '<plate>P'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Header size: 1
		// Code size: 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld string Compare.CarplateClass::'<plate>P'
		IL_0007: ldarg.0
		IL_0008: call instance void [System.Runtime]System.Object::.ctor()
		IL_000d: ret
	} // end of method CarplateClass::.ctor

	.method public hidebysig specialname 
		instance string get_Value () cil managed 
	{
		// Method begins at RVA 0x205f
		// Header size: 1
		// Code size: 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld string Compare.CarplateClass::'<plate>P'
		IL_0006: call void Compare.CarplateClass::Validate(string)
		IL_000b: ldarg.0
		IL_000c: ldfld string Compare.CarplateClass::'<plate>P'
		IL_0011: call string Compare.CarplateClass::Format(string)
		IL_0016: ret
	} // end of method CarplateClass::get_Value

	.method private hidebysig static 
		void Validate (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2077
		// Header size: 1
		// Code size: 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldstr "[A-z]{3}\\d[A-j0-9]\\d{2}"
		IL_0006: ldc.i4.1
		IL_0007: call bool [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex::IsMatch(string, string, valuetype [System.Text.RegularExpressions]System.Text.RegularExpressions.RegexOptions)
		IL_000c: brtrue.s IL_0014

		IL_000e: newobj instance void [System.Runtime]System.InvalidCastException::.ctor()
		IL_0013: throw

		IL_0014: ret
	} // end of method CarplateClass::Validate

	.method private hidebysig static 
		string Format (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2090
		// Header size: 12
		// Code size: 60 (0x3c)
		.maxstack 5
		.locals init (
			[0] string first,
			[1] string second,
			[2] string
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance string [System.Runtime]System.String::ToUpper()
		IL_0006: starg.s plate
		IL_0008: ldarg.0
		IL_0009: ldc.i4.0
		IL_000a: ldc.i4.3
		IL_000b: callvirt instance string [System.Runtime]System.String::Substring(int32, int32)
		IL_0010: stloc.0
		IL_0011: ldarg.0
		IL_0012: stloc.2
		IL_0013: ldloc.2
		IL_0014: ldc.i4.3
		IL_0015: ldloc.2
		IL_0016: callvirt instance int32 [System.Runtime]System.String::get_Length()
		IL_001b: ldc.i4.3
		IL_001c: sub
		IL_001d: callvirt instance string [System.Runtime]System.String::Substring(int32, int32)
		IL_0022: stloc.1
		IL_0023: ldstr "-"
		IL_0028: ldc.i4.2
		IL_0029: newarr [System.Runtime]System.String
		IL_002e: dup
		IL_002f: ldc.i4.0
		IL_0030: ldloc.0
		IL_0031: stelem.ref
		IL_0032: dup
		IL_0033: ldc.i4.1
		IL_0034: ldloc.1
		IL_0035: stelem.ref
		IL_0036: call string [System.Runtime]System.String::Join(string, string[])
		IL_003b: ret
	} // end of method CarplateClass::Format

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x20d8
		// Header size: 1
		// Code size: 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: isinst Compare.CarplateClass
		IL_0007: call instance bool Compare.CarplateClass::Equals(class Compare.CarplateClass)
		IL_000c: ret
	} // end of method CarplateClass::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			class Compare.CarplateClass other
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x20e6
		// Header size: 1
		// Code size: 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0015

		IL_0003: ldarg.0
		IL_0004: call instance string Compare.CarplateClass::get_Value()
		IL_0009: ldarg.1
		IL_000a: callvirt instance string Compare.CarplateClass::get_Value()
		IL_000f: call bool [System.Runtime]System.String::op_Equality(string, string)
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method CarplateClass::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x20fe
		// Header size: 1
		// Code size: 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance string Compare.CarplateClass::get_Value()
		IL_0006: call int32 [System.Runtime]System.HashCode::Combine<string>(!!0)
		IL_000b: ret
	} // end of method CarplateClass::GetHashCode

	.method public hidebysig specialname static 
		class Compare.CarplateClass op_Implicit (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x210b
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void Compare.CarplateClass::.ctor(string)
		IL_0006: ret
	} // end of method CarplateClass::op_Implicit

	.method public hidebysig specialname static 
		string op_Implicit (
			class Compare.CarplateClass plate
		) cil managed 
	{
		// Method begins at RVA 0x2113
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance string Compare.CarplateClass::get_Value()
		IL_0006: ret
	} // end of method CarplateClass::op_Implicit

	.method public hidebysig specialname static 
		bool op_Equality (
			class Compare.CarplateClass left,
			class Compare.CarplateClass right
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x211b
		// Header size: 1
		// Code size: 13 (0xd)
		.maxstack 8

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<class Compare.CarplateClass>::get_Default()
		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<class Compare.CarplateClass>::Equals(!0, !0)
		IL_000c: ret
	} // end of method CarplateClass::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			class Compare.CarplateClass left,
			class Compare.CarplateClass right
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x2129
		// Header size: 1
		// Code size: 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool Compare.CarplateClass::op_Equality(class Compare.CarplateClass, class Compare.CarplateClass)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method CarplateClass::op_Inequality

	// Properties
	.property instance string Value()
	{
		.get instance string Compare.CarplateClass::get_Value()
	}

} // end of class Compare.CarplateClass