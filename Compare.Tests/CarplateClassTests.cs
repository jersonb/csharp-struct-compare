namespace Compare.Tests;

public class CarplateClassTests
{
    [Fact]
    public void Test1()
    {
        CarplateClass plate = "abc1234";

        Assert.Equal("ABC-1234", plate);
    }

    [Fact]
    public void Test2()
    {
        CarplateClass plate = "abc1b34";

        Assert.Equal("ABC-1B34", plate);
    }

    [Fact]
    public void Test3()
    {
        CarplateClass plate1 = "abc1b34";
        CarplateClass plate2 = "abc1b34";

        Assert.True(plate1 == plate2);
    }

    [Fact]
    public void Test4()
    {
        CarplateClass plate1 = "abc1b34";
        CarplateClass plate2 = "xyz1b34";

        Assert.True(plate1 != plate2);
    }
}