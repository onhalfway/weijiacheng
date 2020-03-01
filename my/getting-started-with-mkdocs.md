# [mkdocs](https://www.mkdocs.org/#getting-started)

- Python.md -> MKDocs: build static website with Markdown files

open terminal `Ctrl + \``

`mkdocs --help`

``` cmd
$ mkdocs --version
mkdocs, version 1.0.4 from c:\users\kehwei\appdata\local\programs\python\python37\lib\site-packages\mkdocs (Python 3.7)
```

`mkdocs serve`

`mkdocs build --help`

`mkdocs build [--clean]`

`mkdocs gh-deploy [--clean] [-v]`

- [mkdocs](#mkdocs)
  - [themes location](#themes-location)
  - [Github Repository](#github-repository)
  - [native HTML for media](#native-html-for-media)
  - [Copyright: No copy](#copyright-no-copy)
    - [Javascript](#javascript)
    - [CSS](#css)

## themes location

C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\css\bootstrap-custom.min.css

C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\css\base.css
- line 101
pre code {
    background: transparent;
    border: none;
    white-space: pre;
    word-wrap: normal;
    #font-family: monospace,serif;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 20px;
}

## Github Repository

repo_url: https://github.com/onhalfway/weijiacheng

## native HTML for media

<video controls="controls">
    <source src="../lib/movie.mp4" type="video/mp4" />
    <source src="../lib/movie.ogg" type="video/ogg" />
</video>

<audio src="../lib/song.ogg" controls="controls"></audio>

## Copyright: No copy

### Javascript

- [base js](C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\js\base.js)

$(document).ready(function() {

    /* No copy. This website is Copyright. */
    document.oncopy=function(){
            alert('This website is Copyright.');
            return false;
    }

    /* below code no change. */
}

- HTML Head Javascript

<script type="text/javascript">
    document.oncopy=function(){
            //alert('This website is Copyright.');
            return false;
    }
</script>

### CSS

- [base CSS](C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\css\base.css)

body {
    /* No copy. This website is Copyright. */
    -moz-user-select: none;
    -webkit-user-select: none;
    -ms-user-select: none;
    -khtml-user-select: none;
    user-select: none;
}
