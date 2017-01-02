# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Vinci"
	twitter: ""
	description: ""


pageGroup = new PageComponent width: Screen.width,height: Screen.height,backgroundColor: "null",scrollVertical: false
pageArray = []

for i in [0..5]
	page = new Layer
		parent: pageGroup.content
		backgroundColor: Utils.randomColor()
		size: pageGroup.size
		x: pageGroup.width * i 
	pageArray.push page


pageIndictor = new Layer x: Align.center, y: Align.bottom(-20),backgroundColor: "white",width: 200,height: 200,html:"1",style: "color":"black","font-size":"120px","line-height":"180px","text-align":"center",

pageGroup.onChange "currentPage", ->
	#print pageGroup.horizontalPageIndex(pageGroup.currentPage)
	pageIndictor.html = Utils.modulate(pageArray.indexOf(pageGroup.currentPage),[0,5],[1,6])
	