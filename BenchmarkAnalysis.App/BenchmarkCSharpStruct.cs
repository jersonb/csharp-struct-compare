using BenchmarkDotNet.Attributes;
using Compare;

namespace BenchmarkAnalysis.App;

public class BenchmarkCSharpStruct
{
    private readonly string value;

    public BenchmarkCSharpStruct()
    {
        value = "abc1234";
    }

    [Benchmark]
    public string CarplateClass()
    {
        CarplateClass plate = value;
        return plate;
    }

    [Benchmark]
    public string CarplateRecord()
    {
        CarplateRecord plate = value;
        return plate;
    }

    [Benchmark]
    public string CarplateRecordStruct()
    {
        CarplateRecordStruct plate = value;
        return plate;
    }

    [Benchmark]
    public string CarplateStruct()
    {
        CarplateStruct plate = value;
        return plate;
    }
}