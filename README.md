# swift-temperature

Use this package when a value is temperature: how hot, thermodynamic. Start from `Temperature`, a kind of quantity of swift-quantity, and make an amount with `Temperature.kelvins(_:)`; it is a `Temperature.Value<Scalar>`, a `Tagged<Temperature, Scalar>`.

## Laws

- An amount of temperature is stored in kelvins, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is temperature: 1 (exponents of the base dimensions).
- Amounts of temperature add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
