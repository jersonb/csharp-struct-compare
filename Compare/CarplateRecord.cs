using System.Text.RegularExpressions;

namespace Compare;

public sealed record CarplateRecord
{
    private CarplateRecord(string plate)
    {
        Validate(plate);
        Value = Format(plate);
    }
    public string Value { get; }

    private static void Validate(string plate)
    {
        if (!Regex.IsMatch(plate, "[A-z]{3}\\d[A-j0-9]\\d{2}", RegexOptions.IgnoreCase))
        {
            throw new InvalidCastException();
        }
    }

    private static string Format(string plate)
    {
        plate = plate.ToUpper();
        var first = plate[..3];
        var second = plate[3..];
        return string.Join("-", first, second);
    }

    public static implicit operator CarplateRecord(string plate)
        => new(plate);

    public static implicit operator string(CarplateRecord plate)
        => plate.Value;
}