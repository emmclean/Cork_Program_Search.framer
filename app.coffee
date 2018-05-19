Scroll = new ScrollComponent
	width: Screen.width 
	height: Screen.height 
	scrollHorizontal: false

Scroll2 = new ScrollComponent
	width: Screen.width 
	height: Screen.height 
	scrollHorizontal: false
	visible: false 
	
Header = new Layer
	width: 1024
	height: 177
	image: "images/Header.png"

Home = new Layer
	width: 1024
	height: 1256
	image: "images/Home.png"
	y: Header.height
	parent: Scroll.content

Fitness_HS = new Layer 
	parent: Home
	y: 704
	x: 252
	width: 260
	height: 258
	backgroundColor: null
	
Header_2 = new Layer
	width: 1024
	height: 177
	image: "images/Header_2.png"
	visible: false 
	opacity: 0

Finder = new Layer
	width: 1024
	height: 930
	image: "images/Finder.png"
	y: Header_2.height 
	opacity: 0
	visible: false
	parent: Scroll2.content

Balance_HS = new Layer 
	parent: Finder
	x: 512
	y: 411
	height: 200
	width: 254
	backgroundColor: null
	
Program_Page = new Layer
	width: 1024
	height: 591
	image: "images/Program_Page.png"
	y: Header_2.height
	x: Screen.width
	
	
Fitness_HS.onClick ->
	Header_2.visible = true
	Finder.visible = true
	Scroll2.visible = true
	Header.animate
		properties:
			opacity: 0
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Header_2.animate
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Finder.animate
		properties:
			opacity: 1
		time: 0.3 
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"

Balance_HS.onClick ->
	Program_Page.animate
		properties: 
			x: 0
		time: 0.3 
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"