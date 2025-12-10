load 'guilib.ring'
load 'ringQr.ring'
img = genqrcode("http://mohannad-aldulaimi.github.io")

? readfromimage(img.toImage() )
new qapp{

	win = new qmainwindow(){
		resize(400,400)
		setCentralWidget(new qLabel(win){
			setPixmap(img)
		})
		show()
	}
	exec()
}