.class public sequential ansi sealed beforefieldinit Compare.CarplateRecordStruct
	extends [System.Runtime]System.ValueType
	implements class [System.Runtime]System.IEquatable`1<valuetype Compare.CarplateRecordStruct>
{
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	.interfaceimpl type class [System.Runtime]System.IEquatable`1<valuetype Compare.CarplateRecordStruct>
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)

	// Fields
	.field private initonly string '<Value>k__BackingField'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x22ea
		// Header size: 1
		// Code size: 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void Compare.CarplateRecordStruct::Validate(string)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: call string Compare.CarplateRecordStruct::Format(string)
		IL_000d: stfld string Compare.CarplateRecordStruct::'<Value>k__BackingField'
		IL_0012: ret
	} // end of method CarplateRecordStruct::.ctor

	.method public hidebysig specialname 
		instance string get_Value () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22fe
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld string Compare.CarplateRecordStruct::'<Value>k__BackingField'
		IL_0006: ret
	} // end of method CarplateRecordStruct::get_Value

	.method private hidebysig static 
		void Validate (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2306
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
	} // end of method CarplateRecordStruct::Validate

	.method private hidebysig static 
		string Format (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x231c
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
	} // end of method CarplateRecordStruct::Format

	.method public hidebysig specialname static 
		valuetype Compare.CarplateRecordStruct op_Implicit (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2364
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void Compare.CarplateRecordStruct::.ctor(string)
		IL_0006: ret
	} // end of method CarplateRecordStruct::op_Implicit

	.method public hidebysig specialname static 
		string op_Implicit (
			valuetype Compare.CarplateRecordStruct plate
		) cil managed 
	{
		// Method begins at RVA 0x236c
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s plate
		IL_0002: call instance string Compare.CarplateRecordStruct::get_Value()
		IL_0007: ret
	} // end of method CarplateRecordStruct::op_Implicit

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2378
		// Header size: 12
		// Code size: 64 (0x40)
		.maxstack 2
		.locals init (
			[0] class [System.Runtime]System.Text.StringBuilder
		)

		IL_0000: newobj instance void [System.Runtime]System.Text.StringBuilder::.ctor()
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: ldstr "CarplateRecordStruct"
		IL_000c: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
		IL_0011: pop
		IL_0012: ldloc.0
		IL_0013: ldstr " { "
		IL_0018: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
		IL_001d: pop
		IL_001e: ldarg.0
		IL_001f: ldloc.0
		IL_0020: call instance bool Compare.CarplateRecordStruct::PrintMembers(class [System.Runtime]System.Text.StringBuilder)
		IL_0025: brfalse.s IL_0030

		IL_0027: ldloc.0
		IL_0028: ldc.i4.s 32
		IL_002a: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
		IL_002f: pop

		IL_0030: ldloc.0
		IL_0031: ldc.i4.s 125
		IL_0033: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
		IL_0038: pop
		IL_0039: ldloc.0
		IL_003a: callvirt instance string [System.Runtime]System.Object::ToString()
		IL_003f: ret
	} // end of method CarplateRecordStruct::ToString

	.method private hidebysig 
		instance bool PrintMembers (
			class [System.Runtime]System.Text.StringBuilder builder
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23c4
		// Header size: 1
		// Code size: 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldstr "Value = "
		IL_0006: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
		IL_000b: pop
		IL_000c: ldarg.1
		IL_000d: ldarg.0
		IL_000e: call instance string Compare.CarplateRecordStruct::get_Value()
		IL_0013: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
		IL_0018: pop
		IL_0019: ldc.i4.1
		IL_001a: ret
	} // end of method CarplateRecordStruct::PrintMembers

	.method public hidebysig specialname static 
		bool op_Inequality (
			valuetype Compare.CarplateRecordStruct left,
			valuetype Compare.CarplateRecordStruct right
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23e0
		// Header size: 1
		// Code size: 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool Compare.CarplateRecordStruct::op_Equality(valuetype Compare.CarplateRecordStruct, valuetype Compare.CarplateRecordStruct)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method CarplateRecordStruct::op_Inequality

	.method public hidebysig specialname static 
		bool op_Equality (
			valuetype Compare.CarplateRecordStruct left,
			valuetype Compare.CarplateRecordStruct right
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23ec
		// Header size: 1
		// Code size: 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s left
		IL_0002: ldarg.1
		IL_0003: call instance bool Compare.CarplateRecordStruct::Equals(valuetype Compare.CarplateRecordStruct)
		IL_0008: ret
	} // end of method CarplateRecordStruct::op_Equality

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23f6
		// Header size: 1
		// Code size: 17 (0x11)
		.maxstack 8

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
		IL_0005: ldarg.0
		IL_0006: ldfld string Compare.CarplateRecordStruct::'<Value>k__BackingField'
		IL_000b: callvirt instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
		IL_0010: ret
	} // end of method CarplateRecordStruct::GetHashCode

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2408
		// Header size: 1
		// Code size: 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: isinst Compare.CarplateRecordStruct
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any Compare.CarplateRecordStruct
		IL_000f: call instance bool Compare.CarplateRecordStruct::Equals(valuetype Compare.CarplateRecordStruct)
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method CarplateRecordStruct::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			valuetype Compare.CarplateRecordStruct other
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2420
		// Header size: 1
		// Code size: 23 (0x17)
		.maxstack 8

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
		IL_0005: ldarg.0
		IL_0006: ldfld string Compare.CarplateRecordStruct::'<Value>k__BackingField'
		IL_000b: ldarg.1
		IL_000c: ldfld string Compare.CarplateRecordStruct::'<Value>k__BackingField'
		IL_0011: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0, !0)
		IL_0016: ret
	} // end of method CarplateRecordStruct::Equals

	// Properties
	.property instance string Value()
	{
		.get instance string Compare.CarplateRecordStruct::get_Value()
	}

} // end of class Compare.CarplateRecordStruct