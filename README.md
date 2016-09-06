# ocaml-cordova-plugin-hot-code-push

Binding to
[cordova-hot-code-push-plugin](https://github.com/nordnet/cordova-hot-code-push)

## What does cordova-hot-code-push-plugin do?

```
This plugin provides functionality to perform automatic updates of the web based
content in your application. Basically, everything that is stored in www folder
of your Cordova project can be updated using this plugin.
```

Source: [cordova-hot-code-push-plugin](https://github.com/nordnet/cordova-hot-code-push)

## How to install and compile your project by using this plugin?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

* This binding is available in opam
```Shell
opam install cordova-plugin-hot-code-push
```

* You can also pin the repository with
```Shell
opam pin add cordova-plugin-hot-code-push https://github.com/dannywillems/ocaml-cordova-plugin-hot-code-push.git
```

To compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-hot-code-push [...] -linkpkg [other arguments]
```

Don't forget to install the npm package *cordova-hot-code-push-plugin* with
```Shell
cordova plugin add cordova-hot-code-push-plugin
```

## How to use?

See the official documentation
[cordova-hot-code-push-plugin](https://github.com/nordnet/cordova-hot-code-push)
