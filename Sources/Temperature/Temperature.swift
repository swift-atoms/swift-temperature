/// Temperature: how hot, thermodynamic, stored in kelvins.
public enum Temperature {}

extension Temperature: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(temperature: 1) }
}

extension Temperature {
    /// An amount of temperature, its scalar in kelvins.
    public typealias Value<Scalar> = Tagged<Temperature, Scalar>

    /// An amount of temperature given in kelvins.
    @inlinable
    public static func kelvins<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
