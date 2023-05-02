library(tidyverse)

gapminder_wide <- read_csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_wide.csv")

# Tidy the gapminder_wide data using pivot_longer()

# Create the following data frames:

# 1. continent_country: has just the continents and country observations. It's ok if there are duplicates.

contintent_country <- gapminder_wide %>%
  select(continent, country)

# 2. gdp: has just country, year, and gdp variables

gdp <- gapminder_wide %>%
  select (country, contains("gdp")) %>%
  pivot_longer(cols = contains("gdp"),
               names_to = "year",
               values_to = "gdp") %>%
  mutate(year =parse_number(year))


# 3. life_expectancy: has just country, year, and life_expectancy variables

# 4. population: has just country, year, and population variables

# Create a gist and send me the link to your code via chat