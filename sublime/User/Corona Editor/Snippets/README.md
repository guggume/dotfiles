**Corona Editor Snippets**

Put Sublime Text .sublime-snippets here and they will be incorporated into the
"Snippets" menu in Corona Editor.  The `<description>` tag in the XML is used as
the menu entry.

You can also add files which contain the name of a `trigger` in the
`corona.completions-*` files and they will be expanded to the `contents` of that
completion.  This allows for a more browsable interface than the completions
themselves.

For example, a file with the contents:
```
display.loadRemoteImage
```
will expand into the snippet:
```
display.loadRemoteImage( ${1:url}, ${2:method}, ${3:listener} ${4:[, params]}, ${5:destFilename} ${6:[, baseDir]} ${7:[, x, y]} )
```
