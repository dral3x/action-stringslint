# GitHub Action for StringsLint

This Action executes [StringsLint](https://github.com/dral3x/StringsLint) and generates annotations from the violations found.

## Usage

An example workflow (`.github/workflows/stringslint.yml`) to executing StringsLint follows:

```yaml
name: StringsLint

on:
  pull_request:
    paths:
      - '.github/workflows/stringslint.yml'
      - '.stringslint.yml'
      - '**/*.swift'
      - '**/*.strings'
      - '**/*.stringsdict'

jobs:
  StringsLint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: GitHub Action for StringsLint
        uses: dral3x/action-stringslint@1.1.6

      - name: GitHub Action for StringsLint with --config
        uses: dral3x/action-stringslint@1.1.6
        with:
          args: --config ../shared/stringslint.yml
```

## Author

Alessandro Calzavara

## License

[MIT licensed](LICENSE)
