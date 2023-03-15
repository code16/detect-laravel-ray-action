# Detect Laravel Ray
This GitHub Action allows you to scan Laravel application codebase and detects remaining [Spatie's ray](https://myray.app/) calls. By default, it includes the following directories:
- `./app`
- `./resources/views`
- `./database`
- `./routes`
- `./tests`

## Usage

```yaml
- name: Detect remaining Spatie\ray calls
  uses: code16/x-ray-action@v1
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)

## Contributing

Please feel free to create an issue if you find a bug or send a pull request if you wish to improve the existing code/add a new feature. 
