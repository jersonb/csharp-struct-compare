.class public auto ansi sealed beforefieldinit Compare.CarplateRecord
	extends [System.Runtime]System.Object
	implements class [System.Runtime]System.IEquatable`1<class Compare.CarplateRecord>
{
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.interfaceimpl type class [System.Runtime]System.IEquatable`1<class Compare.CarplateRecord>
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)

	// Fields
	.field private initonly string '<Value>k__BackingField'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method private hidebysig specialname 
		instance class [System.Runtime]System.Type get_EqualityContract () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2135
		// Header size: 1
		// Code size: 11 (0xb)
		.maxstack 8

		IL_0000: ldtoken Compare.CarplateRecord
		IL_0005: call class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
		IL_000a: ret
	} // end of method CarplateRecord::get_EqualityContract

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2141
		// Header size: 1
		// Code size: 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: call void Compare.CarplateRecord::Validate(string)
		IL_000c: ldarg.0
		IL_000d: ldarg.1
		IL_000e: call string Compare.CarplateRecord::Format(string)
		IL_0013: stfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_0018: ret
	} // end of method CarplateRecord::.ctor

	.method public hidebysig specialname 
		instance string get_Value () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x215b
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_0006: ret
	} // end of method CarplateRecord::get_Value

	.method private hidebysig static 
		void Validate (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2163
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
	} // end of method CarplateRecord::Validate

	.method private hidebysig static 
		string Format (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x217c
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
	} // end of method CarplateRecord::Format

	.method public hidebysig specialname static 
		class Compare.CarplateRecord op_Implicit (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x21c4
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void Compare.CarplateRecord::.ctor(string)
		IL_0006: ret
	} // end of method CarplateRecord::op_Implicit

	.method public hidebysig specialname static 
		string op_Implicit (
			class Compare.CarplateRecord plate
		) cil managed 
	{
		// Method begins at RVA 0x21cc
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance string Compare.CarplateRecord::get_Value()
		IL_0006: ret
	} // end of method CarplateRecord::op_Implicit

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21d4
		// Header size: 12
		// Code size: 64 (0x40)
		.maxstack 2
		.locals init (
			[0] class [System.Runtime]System.Text.StringBuilder
		)

		IL_0000: newobj instance void [System.Runtime]System.Text.StringBuilder::.ctor()
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: ldstr "CarplateRecord"
		IL_000c: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
		IL_0011: pop
		IL_0012: ldloc.0
		IL_0013: ldstr " { "
		IL_0018: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
		IL_001d: pop
		IL_001e: ldarg.0
		IL_001f: ldloc.0
		IL_0020: call instance bool Compare.CarplateRecord::PrintMembers(class [System.Runtime]System.Text.StringBuilder)
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
	} // end of method CarplateRecord::ToString

	.method private hidebysig 
		instance bool PrintMembers (
			class [System.Runtime]System.Text.StringBuilder builder
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2220
		// Header size: 1
		// Code size: 32 (0x20)
		.maxstack 8

		IL_0000: call void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::EnsureSufficientExecutionStack()
		IL_0005: ldarg.1
		IL_0006: ldstr "Value = "
		IL_000b: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
		IL_0010: pop
		IL_0011: ldarg.1
		IL_0012: ldarg.0
		IL_0013: call instance string Compare.CarplateRecord::get_Value()
		IL_0018: callvirt instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
		IL_001d: pop
		IL_001e: ldc.i4.1
		IL_001f: ret
	} // end of method CarplateRecord::PrintMembers

	.method public hidebysig specialname static 
		bool op_Inequality (
			class Compare.CarplateRecord left,
			class Compare.CarplateRecord right
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2241
		// Header size: 1
		// Code size: 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool Compare.CarplateRecord::op_Equality(class Compare.CarplateRecord, class Compare.CarplateRecord)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method CarplateRecord::op_Inequality

	.method public hidebysig specialname static 
		bool op_Equality (
			class Compare.CarplateRecord left,
			class Compare.CarplateRecord right
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x224d
		// Header size: 1
		// Code size: 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: beq.s IL_0011

		IL_0004: ldarg.0
		IL_0005: brfalse.s IL_000f

		IL_0007: ldarg.0
		IL_0008: ldarg.1
		IL_0009: callvirt instance bool Compare.CarplateRecord::Equals(class Compare.CarplateRecord)
		IL_000e: ret

		IL_000f: ldc.i4.0
		IL_0010: ret

		IL_0011: ldc.i4.1
		IL_0012: ret
	} // end of method CarplateRecord::op_Equality

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2261
		// Header size: 1
		// Code size: 40 (0x28)
		.maxstack 8

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<class [System.Runtime]System.Type>::get_Default()
		IL_0005: ldarg.0
		IL_0006: call instance class [System.Runtime]System.Type Compare.CarplateRecord::get_EqualityContract()
		IL_000b: callvirt instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<class [System.Runtime]System.Type>::GetHashCode(!0)
		IL_0010: ldc.i4 -1521134295
		IL_0015: mul
		IL_0016: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
		IL_001b: ldarg.0
		IL_001c: ldfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_0021: callvirt instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
		IL_0026: add
		IL_0027: ret
	} // end of method CarplateRecord::GetHashCode

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x228a
		// Header size: 1
		// Code size: 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: isinst Compare.CarplateRecord
		IL_0007: call instance bool Compare.CarplateRecord::Equals(class Compare.CarplateRecord)
		IL_000c: ret
	} // end of method CarplateRecord::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			class Compare.CarplateRecord other
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2298
		// Header size: 1
		// Code size: 53 (0x35)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: beq.s IL_0033

		IL_0004: ldarg.1
		IL_0005: brfalse.s IL_0031

		IL_0007: ldarg.0
		IL_0008: call instance class [System.Runtime]System.Type Compare.CarplateRecord::get_EqualityContract()
		IL_000d: ldarg.1
		IL_000e: callvirt instance class [System.Runtime]System.Type Compare.CarplateRecord::get_EqualityContract()
		IL_0013: call bool [System.Runtime]System.Type::op_Equality(class [System.Runtime]System.Type, class [System.Runtime]System.Type)
		IL_0018: brfalse.s IL_0031

		IL_001a: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
		IL_001f: ldarg.0
		IL_0020: ldfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_0025: ldarg.1
		IL_0026: ldfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_002b: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0, !0)
		IL_0030: ret

		IL_0031: ldc.i4.0
		IL_0032: ret

		IL_0033: ldc.i4.1
		IL_0034: ret
	} // end of method CarplateRecord::Equals

	.method public hidebysig 
		instance class Compare.CarplateRecord '<Clone>$' () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22ce
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void Compare.CarplateRecord::.ctor(class Compare.CarplateRecord)
		IL_0006: ret
	} // end of method CarplateRecord::'<Clone>$'

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			class Compare.CarplateRecord original
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22d6
		// Header size: 1
		// Code size: 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_000d: stfld string Compare.CarplateRecord::'<Value>k__BackingField'
		IL_0012: ret
	} // end of method CarplateRecord::.ctor

	// Properties
	.property instance class [System.Runtime]System.Type EqualityContract()
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.get instance class [System.Runtime]System.Type Compare.CarplateRecord::get_EqualityContract()
	}
	.property instance string Value()
	{
		.get instance string Compare.CarplateRecord::get_Value()
	}

} // end of class Compare.CarplateRecord