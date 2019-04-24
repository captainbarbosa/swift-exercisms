// Instructions:

//Given an age in seconds, calculate how old someone would be on:
//
//Earth: orbital period 365.25 Earth days, or 31557600 seconds
//Mercury: orbital period 0.2408467 Earth years
//Venus: orbital period 0.61519726 Earth years
//Mars: orbital period 1.8808158 Earth years
//Jupiter: orbital period 11.862615 Earth years
//Saturn: orbital period 29.447498 Earth years
//Uranus: orbital period 84.016846 Earth years
//Neptune: orbital period 164.79132 Earth years
//So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.

class SpaceAge {
    let seconds: Double
    var onEarth: Double

    init(_ seconds: Double) {
        self.seconds = seconds
        self.onEarth = self.seconds / 31557600
    }

    var onMercury: Double {
        return (self.onEarth / 0.2408467)
    }

    var onVenus: Double {
        return (self.onEarth / 0.61519726)
    }

    var onMars: Double {
        return (self.onEarth / 1.8808158)
    }

    var onJupiter: Double {
        return (self.onEarth / 11.862615)
    }

    var onSaturn: Double {
        return (self.onEarth / 29.447498)
    }

    var onUranus: Double {
        return (self.onEarth / 84.016846)
    }

    var onNeptune: Double {
        return (self.onEarth / 164.79132)
    }
}
