getTitle = ->
  title = $("#productTitle").text()
  unless title
    _title = $("title").text().match(/Amazon\.co\.jp(:|：| \| )(.*?)(:|：| \| ).*/)
    title = _title[2].trim() if _title?.length >= 3
  title

title = getTitle()

return unless title

url = "http://www.yodobashi.com/ec/category/index.html?word=#{encodeURI(title)}"

yodobashi = $("<div>").css(
  position : "fixed",
  top : "0px",
  right :"0px",
  "z-index" : 1000,
  "background-color": "red",
).append($("<a>",
  href: url,
  text: "yodobashi.com"
))

$("body").append(yodobashi)
