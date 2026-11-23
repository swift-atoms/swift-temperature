import Temperature
import Testing

enum `Temperature Tests` {}

extension `Temperature Tests` {
    @Suite struct `Temperature is a kind of quantity in kelvins` {
        @Test func `Its dimension is temperature: 1`() {
            #expect(Temperature.dimension == Quantity.Dimension(temperature: 1))
        }

        @Test func `An amount given in kelvins keeps its scalar`() {
            #expect(Temperature.kelvins(2.5).underlying == 2.5)
        }
    }
}
