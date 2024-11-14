.class public sequential ansi sealed beforefieldinit Compare.CarplateStruct
	extends [System.Runtime]System.ValueType
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
	// Fields
	.field private initonly string '<plate>P'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2438
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld string Compare.CarplateStruct::'<plate>P'
		IL_0007: ret
	} // end of method CarplateStruct::.ctor

	.method public hidebysig specialname 
		instance string get_Value () cil managed 
	{
		// Method begins at RVA 0x2441
		// Header size: 1
		// Code size: 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld string Compare.CarplateStruct::'<plate>P'
		IL_0006: call void Compare.CarplateStruct::Validate(string)
		IL_000b: ldarg.0
		IL_000c: ldfld string Compare.CarplateStruct::'<plate>P'
		IL_0011: call string Compare.CarplateStruct::Format(string)
		IL_0016: ret
	} // end of method CarplateStruct::get_Value

	.method private hidebysig static 
		void Validate (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2459
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
	} // end of method CarplateStruct::Validate

	.method private hidebysig static 
		string Format (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x2470
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
	} // end of method CarplateStruct::Format

	.method public hidebysig specialname static 
		valuetype Compare.CarplateStruct op_Implicit (
			string plate
		) cil managed 
	{
		// Method begins at RVA 0x24b8
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void Compare.CarplateStruct::.ctor(string)
		IL_0006: ret
	} // end of method CarplateStruct::op_Implicit

	.method public hidebysig specialname static 
		string op_Implicit (
			valuetype Compare.CarplateStruct plate
		) cil managed 
	{
		// Method begins at RVA 0x24c0
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s plate
		IL_0002: call instance string Compare.CarplateStruct::get_Value()
		IL_0007: ret
	} // end of method CarplateStruct::op_Implicit

	// Properties
	.property instance string Value()
	{
		.get instance string Compare.CarplateStruct::get_Value()
	}

} // end of class Compare.CarplateStruct