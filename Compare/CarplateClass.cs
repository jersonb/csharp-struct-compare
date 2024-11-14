using System.Text.RegularExpressions;

namespace Compare;
public sealed class CarplateClass(string plate) : IEquatable<CarplateClass?>
{
    public string Value
    {
        get
        {
            Validate(plate);
            return Format(plate);
        }
    }

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

    public override bool Equals(object? obj)
    {
        return Equals(obj as CarplateClass);
    }

    public bool Equals(CarplateClass? other)
    {
        return other is not null &&
               Value == other.Value;
    }

    public override int GetHashCode()
    {
        return HashCode.Combine(Value);
    }

    public static implicit operator CarplateClass(string plate)
        => new(plate);

    public static implicit operator string(CarplateClass plate)
        => plate.Value;

    public static bool operator ==(CarplateClass? left, CarplateClass? right)
    {
        return EqualityComparer<CarplateClass>.Default.Equals(left, right);
    }

    public static bool operator !=(CarplateClass? left, CarplateClass? right)
    {
        return !(left == right);
    }
}