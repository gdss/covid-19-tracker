class Country {
  int updated;
  String country;
  String flagURL;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  double casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  int testsPerOneMillion;
  int population;
  String continent;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;

  Country(
      {this.updated,
      this.country,
      this.flagURL,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.continent,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
        updated: json['updated'],
        country: json['country'],
        flagURL: json['countryInfo']['flag'],
        cases: json['cases'],
        todayCases: json['todayCases'],
        deaths: json['deaths'],
        todayDeaths: json['todayDeaths'],
        recovered: json['recovered'],
        todayRecovered: json['todayRecovered'],
        active: json['active'],
        critical: json['critical'],
        casesPerOneMillion: double.parse(json['casesPerOneMillion'].toString()),
        deathsPerOneMillion:
            double.parse(json['deathsPerOneMillion'].toString()),
        tests: json['tests'],
        testsPerOneMillion: json['testsPerOneMillion'],
        population: json['population'],
        continent: json['continent'],
        oneCasePerPeople: json['oneCasePerPeople'],
        oneDeathPerPeople: json['oneDeathPerPeople'],
        oneTestPerPeople: json['oneTestPerPeople'],
        activePerOneMillion:
            double.parse(json['activePerOneMillion'].toString()),
        recoveredPerOneMillion:
            double.parse(json['recoveredPerOneMillion'].toString()),
        criticalPerOneMillion:
            double.parse(json['criticalPerOneMillion'].toString()));
  }
}
