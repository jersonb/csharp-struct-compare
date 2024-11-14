namespace Compare.Tests;

public class CarplateRecordStructTests
{
    [Fact]
    public void Test1()
    {
        CarplateRecordStruct plate = "abc1234";

        Assert.Equal("ABC-1234", plate);
    }

    [Fact]
    public void Test2()
    {
        CarplateRecordStruct plate = "abc1b34";

        Assert.Equal("ABC-1B34", plate);
    }

    [Fact]
    public void Test3()
    {
        CarplateRecordStruct plate1 = "abc1b34";
        CarplateRecordStruct plate2 = "abc1b34";

        Assert.True(plate1 == plate2);
    }

    [Fact]
    public void Test4()
    {
        CarplateRecordStruct plate1 = "abc1b34";
        CarplateRecordStruct plate2 = "xyz1b34";

        Assert.True(plate1 != plate2);
    }
}