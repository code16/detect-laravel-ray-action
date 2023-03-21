# Detect Laravel Ray Action
This GitHub Action allows you to scan Laravel application codebase and detect remaining [Spatie's ray](https://myray.app/) calls. By default, it includes the following directories:
- `./app`
- `./resources/views`
- `./database`
- `./routes`
- `./tests`

It will detect:
- `ray()` in PHP files
- `@ray()` in blade templates

It won't detect:
- `Ray::*`
- `rd()`
- `dd()`

It is an alternative to [x-ray](https://github.com/spatie/x-ray), which is great but requires PHP and doesn't scan blade templates.

## Usage

```yaml
- name: Detect remaining Spatie\ray calls
  uses: code16/detect-laravel-ray-action@v1
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)

## Contributing

Please feel free to create an issue if you find a bug or send a pull request if you wish to improve the existing code/add a new feature. 
