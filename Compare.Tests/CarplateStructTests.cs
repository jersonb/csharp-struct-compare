namespace Compare.Tests;

public class CarplateStructTests
{
    [Fact]
    public void Test1()
    {
        CarplateStruct plate = "abc1234";

        Assert.Equal("ABC-1234", plate);
    }

    [Fact]
    public void Test2()
    {
        CarplateStruct plate = "abc1b34";

        Assert.Equal("ABC-1B34", plate);
    }

    [Fact]
    public void Test3()
    {
        CarplateStruct plate1 = "abc1b34";
        CarplateStruct plate2 = "abc1b34";

        Assert.True(plate1 == plate2);
    }

    [Fact]
    public void Test4()
    {
        CarplateStruct plate1 = "abc1b34";
        CarplateStruct plate2 = "xyz1b34";

        Assert.True(plate1 != plate2);
    }
}