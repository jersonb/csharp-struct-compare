namespace Compare.Tests;

public class CarplateRecordTests
{
    [Fact]
    public void Test1()
    {
        CarplateRecord plate = "abc1234";

        Assert.Equal("ABC-1234", plate);
    }

    [Fact]
    public void Test2()
    {
        CarplateRecord plate = "abc1b34";

        Assert.Equal("ABC-1B34", plate);
    }

    [Fact]
    public void Test3()
    {
        CarplateRecord plate1 = "abc1b34";
        CarplateRecord plate2 = "abc1b34";

        Assert.True(plate1 == plate2);
    }

    [Fact]
    public void Test4()
    {
        CarplateRecord plate1 = "abc1b34";
        CarplateRecord plate2 = "xyz1b34";

        Assert.True(plate1 != plate2);
    }
}