# Updating Ruby Applications

## Manual Steps
- run `bundle update`
- run tests
- search manually for details about updates

## Automated Steps
- configure update options (write new `Gemfile`)
- run `bundle update --strict`
- capture update output
  - e.g., "Installing rails 5.1.1 (was 5.1.0)"
  - -> {rails: {old: '5.1.0', new: '5.1.1'}}
- use rubygems.org API to find details for rails gem
  -> {…, source_url: "https://www.github.com/rails/rails"}
- use github.com API to find details about repo tags
  -> {…,tags: ["v5.1.0", "v5.1.1", …]}
- generate diff URL
  -> https://www.github.com/rails/rails/diff/v5.1.0..v5.1.1
