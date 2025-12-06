# tiny_owl_byte.cr
Web-API for [tiny.owlbyte.org](https://tiny.owlbyte.org/) an service where you can paste url that you want shortened

## Example
```cr
require "./tiny_owl_byte"

tiny_owl_byte = TinyOwlByte.new
short_url = tiny_owl_byte.shorten_url("https://example.com")
puts short_url
```
