# [mkdocs](https://www.mkdocs.org/#getting-started)

- [mkdocs](#mkdocs)
  - [common commands](#common-commands)
  - [Github Repository](#github-repository)
  - [modify foot](#modify-foot)
  - [modify themes](#modify-themes)
  - [Copyright: No copy](#copyright-no-copy)
    - [Javascript](#javascript)
    - [CSS](#css)
  - [native HTML for media](#native-html-for-media)

## common commands

- Refer to: in vscode project named weijiacheng
  - `Ctrl + \` -> Python.md -> MKDocs: build static website with Markdown files
- Open terminal in vscode tool `Ctrl + \`
- `mkdocs --help`
- `mkdocs --version`
- `mkdocs serve`
- `mkdocs build --help`
- `mkdocs build [--clean]`
- `mkdocs gh-deploy [--clean] [-v]`

## Github Repository

repo_url: https://github.com/onhalfway/weijiacheng

## modify foot

C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\base.html

## modify themes

- mkdocs 1.0.4 
  - C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\css\bootstrap-custom.min.css
    - body{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:18px;line-height:1.428571429;color:#555;background-color:#fff}
    - font-size:14px; -> font-size:18px;

- mkdocs 1.1
  - C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\css\bootstrap.min.css
  - font-size:1rem; -> font-size:18px; or font-size:larger;

- C:\Users\kehwei\AppData\Local\Programs\Python\Python37\Lib\site-packages\mkdocs\themes\mkdocs\css\base.css
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

html {
    /* No copy. This website is Copyright. */
    -moz-user-select: none;
    -webkit-user-select: none;
    -ms-user-select: none;
    -khtml-user-select: none;
    user-select: none;
}

## native HTML for media

<video controls="controls">
    <source src="../lib/movie.mp4" type="video/mp4" />
    <source src="../lib/movie.ogg" type="video/ogg" />
</video>

<audio src="../lib/song.ogg" controls="controls"></audio>
