datatype Planeta =
    Mercurio
    | Venus
    | Terra
    | Marte
    | Jupiter
    | Saturno
    | Urano
    | Netuno;

fun planetAgeYears (years, Mercurio) = years * 88
    | planetAgeYears (years, Venus) = years * 225
    | planetAgeYears (years, Terra) = years * 365
    | planetAgeYears (years, Marte) = years * 687
    | planetAgeYears (years, Jupiter) = years * 4332
    | planetAgeYears (years, Saturno) = years * 10760
    | planetAgeYears (years, Urano) = years * 30681
    | planetAgeYears (years, Netuno) = years * 60190

fun planetAge (months, planet) = planetAgeYears (months div 12, planet);

planetAge (24, Jupiter);
